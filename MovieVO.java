package goott.spring.project1.domain;

import java.util.Date;

// 영화 정보
public class MovieVO {
	private String movieId;		 // 영화 ID
	private int ageLimit; 		 // 연령 제한
	private String movieName;	 // 제목
	private String movieGenre;   // 장르
	private String movieSummary; // 줄거리
	private int screenTime;		 // 상영시간
	private Date releaseDate;	 // 개봉일
	private String movieCast;	 // 출연진
	private int audCount;	 // 관객수
	
	public MovieVO() {}

	public MovieVO(String movieId, int ageLimit, String movieName, String movieGenre, String movieSummary,
			int screenTime, Date releaseDate, String movieCast, int audCount) {
		super();
		this.movieId = movieId;
		this.ageLimit = ageLimit;
		this.movieName = movieName;
		this.movieGenre = movieGenre;
		this.movieSummary = movieSummary;
		this.screenTime = screenTime;
		this.releaseDate = releaseDate;
		this.movieCast = movieCast;
		this.audCount = audCount;
	}

	public String getMovieId() {
		return movieId;
	}

	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}

	public int getAgeLimit() {
		return ageLimit;
	}

	public void setAgeLimit(int ageLimit) {
		this.ageLimit = ageLimit;
	}

	public String getMovieName() {
		return movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public String getMovieGenre() {
		return movieGenre;
	}

	public void setMovieGenre(String movieGenre) {
		this.movieGenre = movieGenre;
	}

	public String getMovieSummary() {
		return movieSummary;
	}

	public void setMovieSummary(String movieSummary) {
		this.movieSummary = movieSummary;
	}

	public int getScreenTime() {
		return screenTime;
	}

	public void setScreenTime(int screenTime) {
		this.screenTime = screenTime;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getMovieCast() {
		return movieCast;
	}

	public void setMovieCast(String movieCast) {
		this.movieCast = movieCast;
	}

	public int getAudCount() {
		return audCount;
	}

	public void setAudCount(int audCount) {
		this.audCount = audCount;
	}

	@Override
	public String toString() {
		return "MovieVO [movieId=" + movieId + ", ageLimit=" + ageLimit + ", movieName=" + movieName + ", movieGenre="
				+ movieGenre + ", movieSummary=" + movieSummary + ", screenTime=" + screenTime + ", releaseDate="
				+ releaseDate + ", movieCast=" + movieCast + ", audCount=" + audCount + "]";
	}


	
}
