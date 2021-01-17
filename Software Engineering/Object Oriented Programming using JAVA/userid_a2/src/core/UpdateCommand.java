package core;

/**
 * Class to handle update command execution.
 */
public class UpdateCommand extends Command {
	/**
	 * Default constructor override by necessarity.
	 * @param desc Description of the command.
	 */
	public UpdateCommand(String desc) {
		super(desc);
	}

	@Override
	public void execute() {
		//Iterate through every investment and ask for new prices
		Portfolio.getInvestments().forEach((investment)->{
			askForNewPrice(investment);
		});
		
		//Inform on updates
		System.out.println("All investments updated successfully.");
	}
	
	/**
	 * Gathers input from user for an investment's price
	 * @param inv Investment to assign gathered input price
	 */
	private void askForNewPrice(Investment inv) {
		while(true) try {
			//Fetch type of investment and format properly
			System.out.printf("Please enter new price for '%s (%s)': >", inv.getName(), 
					inv.getClass().getSimpleName().equals("Stock") ? "Stock" : "Mutual Fund");
			
			//Gather price input
			int price = (int) (Float.parseFloat(CommandHandler.readInput()) * 100);
			
			//Set investment price
			inv.setPrice(price);
			return;
        } catch (NumberFormatException e) {}
	}
}
