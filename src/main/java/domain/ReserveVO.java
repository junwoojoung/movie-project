package goott.spring.project1.domain;

// 예매정보
public class ReserveVO {
	private String saleId;  // 예매 ID
	private String movieId; // 영화 ID
	private String userId;  // 회원 ID
	private String priceId; // 관람료 ID
	private String seatId;  // 좌석 ID
	private String reserveTotPrice;  // 총 결제 비용
	private String reserveViewDay; // 관람일
	private String reserveBuyDay; // 예매일
	private char reserveYnc; // 예매 취소/ 변경

	public ReserveVO() {
		super();
	}

	public ReserveVO(String saleId, String movieId, String userId, String priceId, String seatId,
			String reserveTotPrice, String reserveViewDay, String reserveBuyDay, char reserveYnc) {
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

	public String getSaleId() {
		return saleId;
	}

	public void setSaleId(String saleId) {
		this.saleId = saleId;
	}

	public String getMovieId() {
		return movieId;
	}

	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPriceId() {
		return priceId;
	}

	public void setPriceId(String priceId) {
		this.priceId = priceId;
	}

	public String getSeatId() {
		return seatId;
	}

	public void setSeatId(String seatId) {
		this.seatId = seatId;
	}

	public String getReserveTotPrice() {
		return reserveTotPrice;
	}

	public void setReserveTotPrice(String reserveTotPrice) {
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
		return "ReserveVO [saleId=" + saleId + ", movieId=" + movieId + ", userId=" + userId + ", priceId=" + priceId
				+ ", seatId=" + seatId + ", reserveTotPrice=" + reserveTotPrice + ", reserveViewDay=" + reserveViewDay
				+ ", reserveBuyDay=" + reserveBuyDay + ", reserveYnc=" + reserveYnc + "]";
	}




}
