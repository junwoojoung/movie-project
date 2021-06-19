package goott.spring.project1;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.domain.RunningTimeVO;
import goott.spring.project1.domain.TheaterVO;
import goott.spring.project1.domain.UserInfoVO;
import goott.spring.project1.persistence.MovieDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
@WebAppConfiguration
public class MovieDAOTest {
	private static final Logger LOGGER = LoggerFactory.getLogger(MovieDAOTest.class);

	@Autowired
	private MovieDAO dao;

	@Autowired
	BCryptPasswordEncoder pwEncoder;

	@Test
	public void testDAO() throws Exception {
//		testSelect();
//		testAllSelect();
//		testTheater();
//		testPoster();
//		testRunningTime();
//		testInsert();
//		testIdChk();
//		testLogin();
//		testUpdate();
//		testDelete();
//		testPwChk();
		passwordEncoding();
	}

	// 1~4위 영화 검색
	public void testSelect() throws Exception {
		List<MovieVO> list = dao.select();
		for (MovieVO vo : list) {
			LOGGER.info("1~4위 영화 목록 : " + vo.toString());
		}

	}

	// 모든 영화 목록
	private void testAllSelect() throws Exception {
		List<MovieVO> list = dao.allSelect();
		for (MovieVO vo : list) {
			LOGGER.info("전체 영화 목록 : " + vo.toString());
		}
	}

	// 상영관 정보
	private void testTheater() throws Exception {
		List<TheaterVO> list = dao.theaterList();
		for (TheaterVO vo : list) {
			LOGGER.info("상영관 정보 : " + vo.toString());
		}
	}

	// 포스터 출력
	private void testPoster() throws Exception {
		String movieName = "더 박스";
		LOGGER.info("상영관ID : " + dao.getPoster(movieName));
	}

	// 상영 시간표
	private void testRunningTime() throws Exception {
		RunningTimeVO vo = new RunningTimeVO();

		// 시간, 상영점, 상영 ID를 입력받으면 총좌석, 예약된 좌석, 영화 시작 시간표를 리턴한다.
		String selectDate = "2021-06-18";
		String theaterName = "강남";
		String theaterId = "s0강남";
		vo.setTheaterId(theaterId);
		vo.setStartDate(selectDate);
		vo.setTheaterName(theaterName);

		List<RunningTimeVO> list = dao.runningTimeInfo(vo);
		LOGGER.info("상영 시간표 : " + list);
	}

	// 회원정보 삽입
	private void testInsert() throws Exception {
		UserInfoVO vo = new UserInfoVO("junit0430", "정준우", "12341234",
		"01025101764", "junwoo0112@naver.com", "000430", "1234567", null);
		dao.insert(vo);
		LOGGER.info("회원 정보 삽입 : " + vo.toString());
	}

	// 아이디 중복 확인
	private void testIdChk() throws Exception {
		UserInfoVO vo = new UserInfoVO("tttttttt12", null, null, null,
				null, null, null, null);
		int result = dao.idChk(vo);
		if (result == 0) {
			LOGGER.info("사용 가능한 아이디입니다.");
		} else {
			LOGGER.info("중복된 아이디입니다.");
		}
	}

	// 로그인
	private void testLogin() throws Exception {
		String userId = "tttttttt12";
		dao.login(userId, null);

	}
	// 회원정보 수정
	private void testUpdate() throws Exception {
		UserInfoVO vo = new UserInfoVO("junit0430", "변경이름", "43214321",
				"01012341234", "jun1234@naver.com", "000000", "7654321", null);
		dao.memberUpdate(vo);
		LOGGER.info("회원 정보 수정 : " + vo.toString());
	}

	// 회원정보 삭제
	private void testDelete() throws Exception {
		UserInfoVO vo = new UserInfoVO("junit0430", null, null, null, null, null, null, null);
		dao.memeberDelete(vo);
	}

	// 비밀번호 확인
	private void testPwChk() throws Exception {
		UserInfoVO vo = new UserInfoVO("tttttttt12", null, null, null, null, null, null, null);
		int result = dao.pwChk(vo);
		if (result == 1) {
			LOGGER.info("비밀번호가 확인되었습니다.");
		} else {
			LOGGER.info("비밀번호가 일치하지 않습니다.");
		}
	}

	// 시큐리티 적용
	public void passwordEncoding() {

		String pw = "codevang";
		String encodedPw1 = pwEncoder.encode(pw);
		String encodedPw2 = pwEncoder.encode(pw);

		System.out.println("원본 : " + pw);
		System.out.println("첫번 째 인코딩 : " + encodedPw1);
		System.out.println("두번 째 인코딩 : " + encodedPw2);

		System.out.println("matches 메소드 사용 비교 : "
				+ pwEncoder.matches(pw, encodedPw1));

	}

}
