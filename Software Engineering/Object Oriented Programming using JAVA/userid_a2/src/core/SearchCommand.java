package core;

import java.util.ArrayList;

/**
 * Class to handle search command execution.
 */
public class SearchCommand extends Command {
	/**
	 * Default constructor override by necessarity.
	 * @param desc Description of the command.
	 */
	public SearchCommand(String desc) {
		super(desc);
	}

	@Override
	public void execute() {
		//Fetch input matching investments
		ArrayList<Investment> investments = Portfolio.findMatchingInvestments();
		
		//Print results
		System.out.println();
		if(investments.size() != 0) { //Found more than zero
			System.out.println("Found result(s):");
			for(Investment investment : investments) {
				System.out.println(investment);
			}
		}
		else { //If found none, express it
			System.out.println("No result found.");
		}
	}
}