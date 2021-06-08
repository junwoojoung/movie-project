package goott.spring.project1.persistence;

import java.util.List;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.domain.ReserveVO;
import goott.spring.project1.domain.RunningTimeVO;
import goott.spring.project1.domain.TheaterVO;
import goott.spring.project1.domain.UserInfoVO;

public interface MovieDAO {
	// 1~4위 영화 검색
	public abstract List<MovieVO> select() throws Exception;

	// 모든 영화 목록
	public abstract List<MovieVO> allSelect() throws Exception;

	// 상영관 정보
	public abstract List<TheaterVO> theaterList() throws Exception;

	// 포스터 출력
	public  abstract MovieVO getPoster(String movieName) throws Exception;

	// 상영시간표
	public abstract List<RunningTimeVO> runningTimeInfo(RunningTimeVO vo) throws Exception;

	// 회원정보 삽입
	public abstract void insert(UserInfoVO vo) throws Exception;

	// 아이디 중복 확인
	public abstract int idChk(UserInfoVO vo) throws Exception;

	// 로그인
	public abstract UserInfoVO login(String userId, String userPw) throws Exception;

	// 회원정보 수정
	public abstract void memberUpdate(UserInfoVO vo) throws Exception;

	// 회원정보 삭제
	public abstract void memeberDelete(UserInfoVO vo) throws Exception;

	// 비밀번호 체크
	public abstract int pwChk(UserInfoVO vo) throws Exception;

	// 예매정보
	public abstract List<ReserveVO> reserveSelect() throws Exception;




}
