package goott.spring.project1.domain;

import java.util.Date;

// 회원 정보
public class UserinfoVO {
	private String userId;	 // 회원 ID
	private String userName; // 회원 이름
	private String userPw;	 // 비밀번호
	private String userPhone;// 전화번호
	private String userEmail;// 이메일
	private Date birth;		 // 생년월일
	private Date userJoin;	 // 가입일자
	
	public UserinfoVO() {}

	public UserinfoVO(String userId, String userName, String userPw, String userPhone, String userEmail, Date birth,
			Date userJoin) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPw = userPw;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.birth = birth;
		this.userJoin = userJoin;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public Date getUserJoin() {
		return userJoin;
	}

	public void setUserJoin(Date userJoin) {
		this.userJoin = userJoin;
	}

	@Override
	public String toString() {
		return "UserinfoVO [userId=" + userId + ", userName=" + userName + ", userPw=" + userPw + ", userPhone="
				+ userPhone + ", userEmail=" + userEmail + ", birth=" + birth + ", userJoin=" + userJoin + "]";
	}
	
	
}
