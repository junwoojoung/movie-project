package goott.spring.project1.service;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.domain.ReserveVO;
import goott.spring.project1.domain.RunningTimeVO;
import goott.spring.project1.domain.TheaterVO;
import goott.spring.project1.domain.UserInfoVO;
import goott.spring.project1.persistence.MovieDAO;

@Service
public class MovieServiceImple implements MovieService{
	private static final Logger LOGGER =
			LoggerFactory.getLogger(MovieServiceImple.class);

	@Autowired
	private MovieDAO dao;

	// 영화 1~4위 리스트 확인
	@Override
	public List<MovieVO> read() throws Exception{
		LOGGER.info("service read() 호출");
		return dao.select();
	}

	// 모든 영화 목록
	@Override
	public List<MovieVO> AllmovieList() throws Exception {
		return dao.allSelect();
	}

	// 상영관 정보
	@Override
	public List<TheaterVO> theaterList() throws Exception {
		return dao.theaterList();
	}

	// 포스터 값 가져오기
	@Override
	public MovieVO getPoster(String movieName) throws Exception {
		LOGGER.info("service imple : " + movieName);
		return (MovieVO) dao.getPoster(movieName);
	}

	// 상영 시간표
	@Override
	public List<RunningTimeVO> runningTimeInfo(RunningTimeVO vo) throws Exception {
		LOGGER.info("serviceImple : " + vo);
		return dao.runningTimeInfo(vo);
	}



	// 회원정보 삽입
	@Override
	public void register(UserInfoVO vo) throws Exception {
		LOGGER.info("service insert() 호출 : vo = " + vo.toString());
		dao.insert(vo);
	}

	// 아이디 중복 체크
	@Override
	public int idChk(UserInfoVO vo) throws Exception{
		int result = dao.idChk(vo);
		return result;
	}

	// 로그인
	@Override
	public UserInfoVO login(String userId, String userPw) throws Exception{
		LOGGER.info("service 실행");
		LOGGER.info("userId : " + userId);
		LOGGER.info("userPw : " + userPw);
		return dao.login(userId, userPw);
	}

	// 회원정보 수정
	@Override
	public void memberUpdate(UserInfoVO vo) throws Exception {
		LOGGER.info("service imple");
		dao.memberUpdate(vo);
	}

	// 회원정보 삭제
	@Override
	public void memberDelete(UserInfoVO vo) throws Exception {
		LOGGER.info("service imple");
		dao.memeberDelete(vo);
	}

	// 비밀번호 체크
	@Override
	public int pwChk(UserInfoVO vo) throws Exception {
		LOGGER.info("service imple");
		int result = dao.pwChk(vo);
		return result;
	}

	// 예매정보
	@Override
	public List<ReserveVO> reserveSelect() throws Exception {
		LOGGER.info("service imple");
		return dao.reserveSelect();
	}


}
