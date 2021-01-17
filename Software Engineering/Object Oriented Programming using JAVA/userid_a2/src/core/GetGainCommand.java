package core;

import java.util.ArrayList;

/**
 * Class to handle getGain command execution.
 */
public class GetGainCommand extends Command {
	/**
	 * Default constructor override by necessarity.
	 * @param desc Description of the command.
	 */
	public GetGainCommand(String desc) {
		super(desc);
	}

	@Override
	public void execute() {		
		//Iterate and sum up total book values
		int totalGain = 0;
		ArrayList<Investment> investments = Portfolio.getInvestments();
		for(int i=0; i<investments.size(); i++) {
			totalGain += investments.get(i).getBookValue();
		}
		
		//Print info
		System.out.printf("Total gain is %s.\n", formatCurrency(totalGain));
	}
	
	/**
	 * Formats currency to a readible one. E.g 1234 to "12.34$"
	 * @param currency Currency to be converted
	 * @return Converted currency string
	 */
	private String formatCurrency(int currency) {
		return currency/100 + "." + currency%100 + "$";
	}
}
