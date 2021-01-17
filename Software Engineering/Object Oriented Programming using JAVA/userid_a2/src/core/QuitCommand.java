package core;

/**
 * Class to handle quit command execution.
 */
public class QuitCommand extends Command {
	/**
	 * Default constructor override by necessarity.
	 * @param desc Description of the command.
	 */
	public QuitCommand(String desc) {
		super(desc);
	}

	@Override
	public void execute() {
		Portfolio.exit(); //Exit with no errors
	}
}
