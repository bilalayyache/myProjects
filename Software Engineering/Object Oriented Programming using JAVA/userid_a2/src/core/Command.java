package core;

public abstract class Command {
	/**
	 * Description of the command.
	 */
	private String desc;
	
	/**
	 * Default constructor of a command with description
	 * @param desc Description of the command
	 */
	public Command(String desc) {
		this.desc = desc;
	}

	/**
	 * Returns the description of the command.
	 * @return description
	 */
	public String getDescription() {
		return desc;
	}
	
	/**
	 * Executes the logic of the command.
	 */
	public abstract void execute();
}
