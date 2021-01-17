package core;

import java.util.ArrayList;

/**
 * Class to handle buy command execution.
 */
public class BuyCommand extends Command {
	/**
	 * Default constructor override by necessarity.
	 * @param desc Description of the command.
	 */
	public BuyCommand(String desc) {
		super(desc);
	}

	@Override
	public void execute() {
		Investment investment = null;
		
		//Take type of input
		String _type;
		do {
			System.out.print("Please enter the type of investment(stock/mutualfund): >");
			_type = CommandHandler.readInput();
		} while(!"stock".startsWith(_type.toLowerCase()) && !"mutualfund".startsWith(_type.toLowerCase()));
		
		//Gather symbol input
		System.out.print("Please enter the symbol of investment: >");
		String _symbol = CommandHandler.readInput();
		
		//Check if investment with given symbol already exists.
		for(Investment inv : Portfolio.getInvestments()) {
			if(inv.getSymbol().equals(_symbol)) {
				System.out.println("An investment with given symbol already exists.");
				investment = inv;
				break;
			}
		}
		
		//Keep gathering name and price if symbol isn't found
		System.out.print("Please enter the name of investment: >");
		String _name = CommandHandler.readInput();

		int _price ;
		while(true) try {
			System.out.print("Please enter the price of investment: >");
			_price = Integer.parseInt(CommandHandler.readInput().replace(".", ""));
			break;
		} catch (NumberFormatException e) {}
		
		//Gather quantity input
		int _quantity;
		while(true) try {
			System.out.print("Please enter the quantity of investment: >");
			_quantity = Integer.parseInt(CommandHandler.readInput());
			break;
        } catch (NumberFormatException e) {}
		
		//Initialize an investment object, if we haven't so far
		investment =  investment != null 
				? investment : "stock".startsWith(_type.toLowerCase()) 
				? new Stock(_symbol, _name, _quantity, _price) : new MutualFund(_symbol, _name, _quantity, _price);
		
		//Buy found or created investment
		investment.buy(_quantity);
		
		//Add investment to appropriate database
		ArrayList<Investment> investments = Portfolio.getInvestments();
		if(!investments.contains(investment)) {
			investments.add(investment);
			System.out.println("Successfully created stock investment.");
		}
		else {
			System.out.println("Successfully updated stock investment.");
		}
		
	}
}
