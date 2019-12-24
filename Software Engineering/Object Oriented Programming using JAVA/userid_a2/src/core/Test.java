package core;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class Test {
	private static final boolean TEST_MODE = false;
	
	private static final String TEST_INPUT = "S-TD-Toronto Dominion Bank-500-60.31-25009.99"
			+ "\nM-CIG677-CI Signature Select Canadian-450-26.95-9000.0";
	
	private static File inputFile;
	
	/**
	 * Reads file given in the path in command line args
	 * @return Return the content of file
	 */
	private static String read() {
		try {
			//Initialize readers
			FileReader fr = new FileReader(inputFile);
			BufferedReader br = new BufferedReader(fr);
			
			//Read data from path line by line
			String str="", line;
			while((line=br.readLine()) != null) {
				str += line + "\n"; 
			}
			br.close();
			
			//Return read data
			return str;
		}
		catch(FileNotFoundException e) {
			System.out.printf("File cannot be found: %s\n", inputFile.getAbsolutePath());
			return null;
		}
		catch(IOException e) {
			System.out.printf("An IO exception occurred reading file: %s\n", inputFile.getAbsolutePath());
			return null;
		}
	}
	
	/**
	 * Parse input data and put initial investments <br>
	 * Initializes additional test string if TEST_MODE is on <br>
	 * Used format is: Type-Symbol-Name-Quantity-Price-BookValue<br> 
	 */
	private static void parseInput() {
		//Fetch given file as string
		String in = read() + (TEST_MODE ? "\n"+TEST_INPUT : "");
		//For every entry
		for(String entity : in.split("\n")) {
			//Ignore lines starting with //
			if(entity.startsWith("//")) continue;
			String[] keys = entity.split("-"); //type - symbol - name - qty - price - bookValue
			
			//Parse given arguments into valid investment fields
			String symbol = keys[1];
			String name = keys[2];
			int quantity = Integer.parseInt(keys[3]);
			int price = (int)(Float.parseFloat(keys[4]) * 100);
			int bookValue = (int)(Float.parseFloat(keys[5]) * 100);
			
			//Initialize investment object by the given type
			Investment investment;
			if(keys[0].equals("S")) { //Stock
				investment = new Stock(symbol, name, quantity, price);
			}
			else if(keys[0].equals("M")) { //MutualFund
				investment = new MutualFund(symbol, name, quantity, price);
			}
			else {
				continue;
			}
			investment.bookValue = bookValue;
			
			//Load investment
			Portfolio.getInvestments().add(investment);
		}
	}

	/**
	 * Serialize investment object and save it to given path
	 */
	private static void saveStates() {
		//Stringify the fields of every investment to prepare for saving phase
		String serialization = "";
		for(Investment inv : Portfolio.getInvestments()) {
			String entry = inv instanceof Stock ? "S" : "M";
			entry += "-" + inv.getSymbol();
			entry += "-" + inv.getName();
			entry += "-" + inv.getQuantity();
			entry += "-" + inv.getPrice()/100f;
			entry += "-" + inv.getBookValue()/100f;
			serialization += entry + "\n";
		}

		try {
			//Initialize writer objects
			FileWriter fw = new FileWriter(inputFile);
			BufferedWriter bw = new BufferedWriter(fw);
			//Write serialized objects string
			bw.write(serialization);
			bw.close();
		} catch (IOException e) {
			System.out.println("An IO error occurred while saving");
		}
	}

	/**
	 * Prints investments array for debug purposes
	 */
	private static void printInvestments() {
		System.out.println("Loaded investments:");
		
		for(Investment inv : Portfolio.getInvestments()) {
			System.out.println(inv);
		}
		
		System.out.println();
	}
	
	public static void main(String[] args) {
		//Construct a File object with given path
		inputFile = new File(args[0]);
		
		//If file doesn't exists create it, so saving will be possible
		if(!inputFile.exists()) {
			try {
				inputFile.getParentFile().mkdirs();
				inputFile.createNewFile();
				if(TEST_MODE) System.out.println("File created.\n");
			}
			catch(IOException e) {
				System.out.println("An IO Error occured. Program terminates.");
				return;
			}
		}
		
		parseInput();
		
		if(TEST_MODE) printInvestments();
		
		Portfolio.start();
		
		saveStates();
	}
}