package core;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * The main class where the program starting method is placed and 
 * the investment database located. There are also some critical utility methods
 * which are used on finding matches for search command.
 */
public class Portfolio {
	/**
	 * Running flag for main program loop.
	 */
	private static boolean running = true;
	
	private static HashMap<String, ArrayList<Integer>> investmentSearchCache = new HashMap<>();
	
	/**
	 * Investment database which is a list
	 */
	private static ArrayList<Investment> investments = new ArrayList<Investment>() {
		private static final long serialVersionUID = 2369336842690413886L;

		public boolean add(Investment inv) {
			//For every keyword in investment's name
			for(String keyword : inv.getName().split("\\s+")) {
				//Fetch indicies of keyword
				ArrayList<Integer> indexCache = investmentSearchCache.get(keyword.toUpperCase());
				//If it's not initialized, initialize it
				if(indexCache == null) {
					indexCache = new ArrayList<>();
					investmentSearchCache.put(keyword.toUpperCase(), indexCache);
				}
				indexCache.add(size()); //size = index of inv
			}
			return super.add(inv);
		};
		
		public boolean remove(Object o) {
			if(o instanceof Investment) {
				Investment inv = (Investment)o;
				//For every keyword in investment's name
				for(String keyword : inv.getName().split("\\s+")) {
					//Fetch cache indicies & index of investment
					ArrayList<Integer> indexCache = investmentSearchCache.get(keyword.toUpperCase());
					Integer indexOfInv = indexOf(inv);
					//If cache isn't empty remove index of deleted investment
					if(indexCache != null) {
						indexCache.remove(indexOfInv);
						//If cache is not empty, remove it
						if(indexCache.size() == 0) {
							investmentSearchCache.remove(keyword.toUpperCase());
						}
						else {
							//else, decrement the ones greater than index of investment
							indexCache.forEach((Integer data)->{
								if(data > indexOfInv) data--;
							});
						}
					}
				}
			}
			return super.remove(o);
		};
	};
	
	/**
	 * Returns the investments list
	 * @return List of investments
	 */
	public static ArrayList<Investment> getInvestments() {
		return investments;
	}
	
	/**
	 * Gathers necessary inputs from the user and filters investments
	 * @return List of filtered investments
	 */
	public static ArrayList<Investment> findMatchingInvestments() {
		ArrayList<Investment> matches = new ArrayList<>();
		
		//Gather symbol input
		System.out.print("Please enter the symbol of investment: >");
		String _symbol = CommandHandler.readInput();
		
		//Check if given symbol already exists
		for(Investment inv : investments) {
			if(inv.getSymbol().equals(_symbol)) {
				matches.add(inv);
				return matches;
			}
		}
		
		//Gather name input
		System.out.print("Please enter the name of investment: >");
		String[] _nameKeys = CommandHandler.readInput().split("\\s+");

		//Gather min and max price values from user
		int min = Integer.MIN_VALUE;
		int max = Integer.MAX_VALUE;
		while(true) try {
			//Ask for an interval query entry
			System.out.print("Please enter the interval of investment: >");
			String _intervalQuery = CommandHandler.readInput();
			if(_intervalQuery.isEmpty()) break;
			
			//Check if '-' exists in input. If so check it's index
			int index = _intervalQuery.indexOf("-");
			if(index == -1) { //Not found, so try parsing literal float
				min = max = (int) (Float.parseFloat(_intervalQuery) * 100);		
			}
			else if(index == 0) { //Found at starting, try parsing it as max value
				max = (int) (Float.parseFloat(_intervalQuery.substring(1, _intervalQuery.length())) * 100);
			}
			else if(index == _intervalQuery.length()-1) { //Found at the end, try parsing as min value
				min = (int) (Float.parseFloat(_intervalQuery.substring(0, _intervalQuery.length()-1)) * 100);				
			}
			else { //Found at middle, so split and parse min and max
				String[] split = _intervalQuery.split("-");
				if(split.length != 2) throw new IllegalArgumentException();
				min = (int) (Float.parseFloat(split[0]) * 100);
				max = (int) (Float.parseFloat(split[1]) * 100);
			}
			break;
		} 
		catch(IllegalArgumentException e) { 
			System.out.println("Invalid query");
		}
		
		//Iterate and filter each investment
		for(Investment inv : investments) {
			if(filter(inv, min, max, _nameKeys)) {
				matches.add(inv);
			}
		}
		
		//Return our list
		return matches;
	}
	
	/**
	 * Checks if given investment meets given requirements 
	 * @param inv Investment to be filtered
	 * @param min Minimum value of price interval
	 * @param max Maximum value of price interval
	 * @param nameKeywords Name keys going to be compared to the investment name
	 * @return Will the investment pass filter
	 */
	private static boolean filter(Investment inv, int min, int max, String[] nameKeywords) {
		//If given investment is not in interval [min, max] then filter out
		if(min>=inv.getPrice() || max<=inv.getPrice()) return false;
		
		//If name input is empty, filter out.
		if(nameKeywords.length==1 && nameKeywords[0].isEmpty()) return true;
		
		//return if C(N1) intersect C(N2) intersect C(NN) contains indexOf(i)
		boolean contains = true;
		for(String keyword : nameKeywords) {
			ArrayList<Integer> indexCache = investmentSearchCache.get(keyword.toUpperCase());
			if(indexCache == null) return false;
			contains &= indexCache.contains((Integer)investments.indexOf(inv));
		}
		return contains;
	}
	
	/**
	 * Flags to exit the program with no error code.
	 */
	public static void exit() {
		running = false;
	}
	
	/**
	 * Initialization handler for the program
	 */
	private static void initialize() {
		System.out.println("Welcome to Investment Portfolio!");
		CommandHandler.initialize();
	}
	
	/**
	 * Termination handler for the program, handling some flushing work.
	 */
	private static void dispose() {
		System.out.println("Program terminated.");
	}
	
	/**
	 * Starts the program loop and maintains it
	 */
	public static void start() {
		initialize();
		
		while(running) {
			//Pass CommandHandler to handle the commander
			CommandHandler.handleInput();
		}
		
		dispose();
	}

	/* Debug purposes
	 * private static void printCacheState() {
		investmentSearchCache.keySet().forEach((key) -> {
			System.out.print(key + ":");
			ArrayList<Integer> indexCache = investmentSearchCache.get(key);
			indexCache.forEach((index) -> {
				System.out.print(index + " ");
			});
			System.out.println();
		});
	}*/
}
