package goott.spring.project1.domain;

// 상영 시간
public class ScreenTimeVO {
	private int movieId;	  // 영화 ID
	private String theaterId; // 상영관 ID
	private String startTime; // 시작 시간
	private String endTime;	  // 종료 시간
	
	public ScreenTimeVO() {}

	public ScreenTimeVO(int movieId, String theaterId, String startTime, String endTime) {
		super();
		this.movieId = movieId;
		this.theaterId = theaterId;
		this.startTime = startTime;
		this.endTime = endTime;
	}

	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

	public String getTheaterId() {
		return theaterId;
	}

	public void setTheaterId(String theaterId) {
		this.theaterId = theaterId;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	@Override
	public String toString() {
		return "ScreenTimeVO [movieId=" + movieId + ", theaterId=" + theaterId + ", startTime=" + startTime
				+ ", endTime=" + endTime + "]";
	}
	
	
}
