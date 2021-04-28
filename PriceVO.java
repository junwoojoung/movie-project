package goott.spring.project1.domain;

// 관람료
public class PriceVO {
	private int priceId;	   // 관람료 ID
	private char priceSpectYn; // 관객구분(어른, 청소년)
	private int price;		   // 관람료
	
	public PriceVO() {}

	public PriceVO(int priceId, char priceSpectYn, int price) {
		super();
		this.priceId = priceId;
		this.priceSpectYn = priceSpectYn;
		this.price = price;
	}

	public int getPriceId() {
		return priceId;
	}

	public void setPriceId(int priceId) {
		this.priceId = priceId;
	}

	public char getPriceSpectYn() {
		return priceSpectYn;
	}

	public void setPriceSpectYn(char priceSpectYn) {
		this.priceSpectYn = priceSpectYn;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "PriceVO [priceId=" + priceId + ", priceSpectYn=" + priceSpectYn + ", price=" + price + "]";
	}
	
}
