package core;

import java.util.ArrayList;

/**
 * Class to handle getGain command execution.
 */
public class SellCommand extends Command{
	/**
	 * Default constructor override by necessarity.
	 * @param desc Description of the command.
	 */
	public SellCommand(String desc) {
		super(desc);
	}

	@Override
	public void execute() {
		//Gather symbol input
		System.out.print("Please enter the symbol of investment: >");
		String _symbol = CommandHandler.readInput();

		//Gather quantity input
		int _quantity;
		while(true) try {
			System.out.print("Please enter the quantity of investment: >");
			_quantity = Integer.parseInt(CommandHandler.readInput());
			break;
		} catch (NumberFormatException e) {}

		//Construct an investment object
		Investment investment = new Investment();
		investment.setSymbol(_symbol);
		investment.setQuantity(_quantity);
		
		ArrayList<Investment> investments = Portfolio.getInvestments();

		//Find if it exists and also figure its type. 
		if(investments.contains(investment)) {
			investment = investments.get(investments.indexOf(investment));
		}
		else { //Inform if not found
			System.out.println("Investment with given symbol not found.");
			return;
		}

		//Evaluate quantity and handle
		if(investment.getQuantity() - _quantity < 0) { //Cannot sell delta quantity > quantity
			System.out.println("Cannot sell more than available.");
		}
		else {
			if(investment.getQuantity() - _quantity == 0) { //Will be out of stock after this step, so remove it
				Portfolio.getInvestments().remove(investment);
				System.out.println("Successfully sold the entire " + investment.getClass().getSimpleName());
			}
			else { //Just sell some of them
				investment.sell(_quantity);
				System.out.printf("Successfully sold %d of %s investment. %d remaining.\n", 
						_quantity, investment.getName(), investment.getQuantity());
			}
		}
	}
}
