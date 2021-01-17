package core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;

/**
 * Handling utility class for the input commands
 */
public class CommandHandler {
	/**
	 * Map of command names to command execution instruction objects. <br/>
	 * <b>commands:(String) -> (Command)</b>
	 */
	private static HashMap<String,Command> commands = new HashMap<>();

	/**
	 * Console stream reading Scanner object.
	 */
	public static Scanner in = new Scanner(System.in);

	/**
	 * Inializes the commands with their descriptions.
	 */
	public static void initialize() {
		commands.put("buy", new BuyCommand("Own a new investment or add more quantity to an existing investment."));
		commands.put("sell", new SellCommand("Reduce some quantity of an existing investment.."));
		commands.put("update", new UpdateCommand("Refresh the prices of all existing investments."));
		commands.put("getGain", new GetGainCommand("Compute the total gain of the portfolio by accumulating gains of all its investments."));
		commands.put("search", new SearchCommand("Search for an existing investment."));
		commands.put("quit", new QuitCommand("Terminates the program."));
	}

	/**
	 * Performs one step of input handling
	 */
	public static void handleInput() {
		//Copy existing command names
		ArrayList<String> cmds = new ArrayList<>(commands.keySet());

		//Print info message
		System.out.println("\nPlease select a command from below:");
		commands.keySet().forEach((String key)->{
			System.out.println(key + " : " + commands.get(key).getDescription());
		});

		//Gather a valid command input from user
		String input = optionSelector(cmds);
		
		System.out.println();

		//Get and execute input command
		commands.get(input).execute();
	}

	/**
	 * Selects an option from given options according to program state.
	 * @param options Options to be processed
	 * @return Selected option string
	 */
	public static String optionSelector(ArrayList<String> options) {
		return optionSelector(options, options, false, true);
	}

	/**
	 * Recursively filters an option from given options and paramters.
	 * @param options Options initally given.
	 * @param matches Matches found at previous step
	 * @param printOpts If true, matching options will be printed. 
	 * @param findFromLeftmost If true, compares options and input from leftmost containment. If not, compares by contains().
	 * @return Selected option string
	 */
	private static String optionSelector(ArrayList<String> options, ArrayList<String> matches, boolean printOpts, boolean findFromLeftmost) {
		//Print options if needed
		if(printOpts) {
			System.out.println("\nEntered invalid command. Valid commands starting with your input:");
			for(String m : matches) System.out.print(m + " ");
			System.out.println();
		}

		//Ask for command input
		System.out.print(">");
		String input = readInput();

		//Find and store matching options
		ArrayList<String> matchingCommands = findMatchingOptions(input, options, findFromLeftmost);

		//Filter and select the options from list
		switch(matchingCommands.size()) {
		case 0:	
			System.out.println("\nEntered invalid command. List of usable commands:");
			commands.keySet().forEach((String key)->{
				System.out.print(key+" ");
			});
			System.out.println();
			return optionSelector(options, options, false, findFromLeftmost);

		case 1:	
			return matchingCommands.get(0);

		default: 
			return optionSelector(options, matchingCommands, true, findFromLeftmost);
		}
	}

	/**
	 * Finds matching options from given option list with specified algorithm.
	 * @param input Input command gathered from user.
	 * @param options List of options to be processed.
	 * @param findFromLeftmost If true, the algorithm will compare from leftmost. If not, it will use equals() method.
	 * @return List of matched options
	 */
	private static ArrayList<String> findMatchingOptions(String input, ArrayList<String> options, boolean findFromLeftmost) {
		ArrayList<String> matches = new ArrayList<>();

		//For every option, check if it matches
		for(String opt : options) {
			if(findFromLeftmost ? opt.toLowerCase().startsWith(input.toLowerCase()) : opt.toLowerCase().contains(input.toLowerCase())) {
				matches.add(opt);
			}							
		}

		return matches;
	}

	/**
	 * Gathers input from user.
	 * @return String input given in console stream.
	 */
	public static String readInput() {
		return in.nextLine().trim();
	}
}
