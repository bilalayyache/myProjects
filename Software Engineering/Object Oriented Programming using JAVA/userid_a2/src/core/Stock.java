package core;

/**
 * Model class to represent a mutual fund investment instance.
 */
public class Stock extends Investment {
	/**
	 * Commission fee is used while calculating book value on buys
	 */
	public static final int COMMISSION_FEE = 999;
	
	/**
	 * Constructs a Stock by copying given investment object's fields
	 * @param i Investment to be copied.
	 */
	public Stock(Investment i) {
		this(i.symbol, i.name, i.quantity, i.price);
	}
	
	/**
	 * Constructs a Stock with given attributes
	 * @param symbol Symbol of investment
	 * @param name Name of investment
	 * @param quantity Quantity of investment
	 * @param price Price of investment
	 */
	public Stock(String symbol, String name, int quantity, int price) {
		super(symbol, name, quantity, price);
		bookValue = quantity * price - COMMISSION_FEE;
	}
	
	@Override
	public void buy(int quantity) {
		this.quantity += quantity;
		bookValue += quantity * price - COMMISSION_FEE;
	}
	
	@Override
	public void sell(int quantity) {
		bookValue = (int) (bookValue * (this.quantity - (double)quantity) / this.quantity);
		this.quantity -= quantity;
	}
}
