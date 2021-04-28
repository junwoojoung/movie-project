package goott.spring.project1.domain;

// 상영관
public class TheaterVO {
	private String theaterId; // 상영관 ID
	private String branchId;  // 지점 ID
	private String screenIn;  // 수용인원
	
	public TheaterVO() {}

	public TheaterVO(String theaterId, String branchId, String screenIn) {
		super();
		this.theaterId = theaterId;
		this.branchId = branchId;
		this.screenIn = screenIn;
	}

	public String getTheaterId() {
		return theaterId;
	}

	public void setTheaterId(String theaterId) {
		this.theaterId = theaterId;
	}

	public String getBranchId() {
		return branchId;
	}

	public void setBranchId(String branchId) {
		this.branchId = branchId;
	}

	public String getScreenIn() {
		return screenIn;
	}

	public void setScreenIn(String screenIn) {
		this.screenIn = screenIn;
	}

	@Override
	public String toString() {
		return "theaterVO [theaterId=" + theaterId + ", branchId=" + branchId + ", screenIn=" + screenIn + "]";
	}
	
}
