package core;

/**
 * Model class to represent a mutual fund investment instance.
 */
public class MutualFund extends Investment {
	/**
	 * Redemption fee is used while calculating book value on sales
	 */
	public static final int REDEMPTION_FEE = 4500;
	
	/**
	 * Constructs a MutualFund by copying given investment object's fields
	 * @param i Investment to be copied.
	 */
	public MutualFund(Investment i) {
		this(i.symbol, i.name, i.quantity, i.price);
	}
	
	/**
	 * Constructs a MutualFund with given attributes
	 * @param symbol Symbol of investment
	 * @param name Name of investment
	 * @param quantity Quantity of investment
	 * @param price Price of investment
	 */
	public MutualFund(String symbol, String name, int quantity, int price) {
		super(symbol, name, quantity, price);
		bookValue = price * quantity;
	}
	
	@Override
	public void buy(int quantity) {
		this.quantity += quantity;
		bookValue += price * quantity;
	}
	
	@Override
	public void sell(int quantity) {
		bookValue = (int) (bookValue * (this.quantity - (double)quantity) / this.quantity) + REDEMPTION_FEE;
		this.quantity -= quantity;
	}
}
