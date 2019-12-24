package core;

/**
 * Model class to represent an investment instance.
 */
public class Investment {	
	protected String symbol;
	protected String name;
	
	protected int quantity;
	protected int price;
	protected int bookValue;
	
	/**
	 * Default constructor creates an empty investment with quantity=0 and price=0.0$
	 */
	public Investment() {
		this("", "", 0, 0);
	}
	
	/**
	 * Creates an investment with quantity=0 and price=0.0$
	 * @param symbol Symbol of the investment
	 * @param name Name of the investment
	 */
	public Investment(String symbol, String name) {
		this(symbol, name, 0, 0);
	}
	
	/**
	 * Creates an investment
	 * @param symbol Symbol of the investment
	 * @param name Name of the investment
	 * @param quantity Quantity of the investment
	 * @param price Price of the investment (1234 represents 12.34$)
	 */
	public Investment(String symbol, String name, int quantity, int price) {
		this.symbol = symbol;
		this.name = name;
		this.quantity = quantity;
		this.price = price;
	}

	/**
	 * Returns the symbol of investment
	 * @return Symbol
	 */
	public String getSymbol() {
		return symbol;
	}

	/**
	 * Assigns a new symbol to the investment
	 * @param symbol New value of the symbol
	 */
	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	/**
	 * Returns the name of investment
	 * @return Name
	 */
	public String getName() {
		return name;
	}

	/**
	 * Assigns a new symbol to the investment
	 * @param name New value of the name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * Returns the quantity of the investment
	 * @return quantity
	 */
	public int getQuantity() {
		return quantity;
	}

	/**
	 * Assigns a new amount to the quantity of investment
	 * @param quantity New value of the quantity
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	/**
	 * Returns the price of each item in investment
	 * @return price
	 */
	public int getPrice() {
		return price;
	}

	/**
	 * Assigns a new price for each item in investment
	 * @param price New value of the price
	 */
	public void setPrice(int price) {
		this.price = price;
	}

	/**
	 * Returns the book value (which is a derived value, cannot be set)
	 * @return book value
	 */
	public int getBookValue() {
		return bookValue;
	}

	/**
	 * Buys more items to the investment
	 * @param quantity Quantity of buy
	 */
	public void buy(int quantity) {
		this.quantity += quantity;
	}

	/**
	 * Sells items from our investment
	 * @param quantity Quantity of sell
	 */
	public void sell(int quantity) {
		this.quantity -= quantity;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(!(obj instanceof Investment)) return false;
		
		Investment inv = (Investment) obj;
		return inv.symbol.toLowerCase().equals(symbol.toLowerCase()); //Only symbol sensitivity
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("{");
		sb.append("Type: " + getClass().getSimpleName()+", ");
		sb.append("Symbol: " + symbol+", ");
		sb.append("Name: " + name+", ");
		sb.append("Quantity: " + quantity+", ");
		sb.append("Price: " + price/100 + "." + price%100 + "$ ");
		sb.append("BookValue: " + bookValue/100 + "." + bookValue%100 + "$");
		sb.append("}");
		return sb.toString();
	}
}
