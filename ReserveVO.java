package goott.spring.project1.domain;

// 예매정보
public class ReserveVO {
	private int saleId;  // 예매 ID
	private int movieId; // 영화 ID
	private int userId;  // 회원 ID
	private int priceId; // 관람료 ID
	private int seatId;  // 좌석 ID
	private int reserveTotPrice;  // 총 결제 비용
	private String reserveViewDay; // 관람일
	private String reserveBuyDay; // 예매일
	private char reserveYnc; // 예매 취소/ 변경
	
	public ReserveVO() {
		super();
	}

	public ReserveVO(int saleId, int movieId, int userId, int priceId, int seatId, int reserveTotPrice,
			String reserveViewDay, String reserveBuyDay, char reserveYnc) {
		super();
		this.saleId = saleId;
		this.movieId = movieId;
		this.userId = userId;
		this.priceId = priceId;
		this.seatId = seatId;
		this.reserveTotPrice = reserveTotPrice;
		this.reserveViewDay = reserveViewDay;
		this.reserveBuyDay = reserveBuyDay;
		this.reserveYnc = reserveYnc;
	}

	public int getSaleId() {
		return saleId;
	}

	public void setSaleId(int saleId) {
		this.saleId = saleId;
	}

	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getPriceId() {
		return priceId;
	}

	public void setPriceId(int priceId) {
		this.priceId = priceId;
	}

	public int getSeatId() {
		return seatId;
	}

	public void setSeatId(int seatId) {
		this.seatId = seatId;
	}

	public int getReserveTotPrice() {
		return reserveTotPrice;
	}

	public void setReserveTotPrice(int reserveTotPrice) {
		this.reserveTotPrice = reserveTotPrice;
	}

	public String getReserveViewDay() {
		return reserveViewDay;
	}

	public void setReserveViewDay(String reserveViewDay) {
		this.reserveViewDay = reserveViewDay;
	}

	public String getReserveBuyDay() {
		return reserveBuyDay;
	}

	public void setReserveBuyDay(String reserveBuyDay) {
		this.reserveBuyDay = reserveBuyDay;
	}

	public char getReserveYnc() {
		return reserveYnc;
	}

	public void setReserveYnc(char reserveYnc) {
		this.reserveYnc = reserveYnc;
	}

	@Override
	public String toString() {
		return "reserveVO [saleId=" + saleId + ", movieId=" + movieId + ", userId=" + userId + ", priceId=" + priceId
				+ ", seatId=" + seatId + ", reserveTotPrice=" + reserveTotPrice + ", reserveViewDay=" + reserveViewDay
				+ ", reserveBuyDay=" + reserveBuyDay + ", reserveYnc=" + reserveYnc + "]";
	}
	
	
}
