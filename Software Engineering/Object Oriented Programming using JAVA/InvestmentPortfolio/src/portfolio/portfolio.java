package portfolio;

public class portfolio{

    /**
     * The main function calls and creates an instance of the GUI class.
     * The GUI Class then creates an instance of Portfolio functions that is used to store the Investments
     * @param args
     * @exception Investment.priceException Investment.symbolException Investment.quantityException Investment.nameException
     */

    public static void main(String[] args) {
        String file;
        if (args.length == 0) {
            System.out.println("************************************************");
            System.out.println("******No file name used, creating new file******");
            System.out.println("************************************************");
            file = "my_Investments.txt";
            try {
                GuiClass gui = new GuiClass(file);
            } catch (Investment.priceException | Investment.symbolException | Investment.quantityException | Investment.nameException e) {
                System.out.println("Error loading File Member...");
            }
        }
        else {
            try {
                GuiClass gui = new GuiClass(args[0]);
            } catch (Investment.priceException | Investment.symbolException | Investment.quantityException | Investment.nameException e) {
                System.out.println("Error loading File Member...");
            }
        }
    }
}