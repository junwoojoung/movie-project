package goott.spring.project1.domain;

// 좌석
public class SeatVO {
	private int seatId; // 좌석 ID
	private String theaterId; // 상영관 ID
	private int seatNum; // 좌석 No
	private char seatReserveYn; // 예약가능_Yes or No
	
	public SeatVO() {}

	public SeatVO(int seatId, String theaterId, int seatNum, char seatReserveYn) {
		super();
		this.seatId = seatId;
		this.theaterId = theaterId;
		this.seatNum = seatNum;
		this.seatReserveYn = seatReserveYn;
	}

	public int getSeatId() {
		return seatId;
	}

	public void setSeatId(int seatId) {
		this.seatId = seatId;
	}

	public String getTheaterId() {
		return theaterId;
	}

	public void setTheaterId(String theaterId) {
		this.theaterId = theaterId;
	}

	public int getSeatNum() {
		return seatNum;
	}

	public void setSeatNum(int seatNum) {
		this.seatNum = seatNum;
	}

	public char getSeatReserveYn() {
		return seatReserveYn;
	}

	public void setSeatReserveYn(char seatReserveYn) {
		this.seatReserveYn = seatReserveYn;
	}

	@Override
	public String toString() {
		return "SeatVO [seatId=" + seatId + ", theaterId=" + theaterId + ", seatNum=" + seatNum + ", seatReserveYn="
				+ seatReserveYn + "]";
	}
	
}
