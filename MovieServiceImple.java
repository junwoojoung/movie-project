package goott.spring.project1.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.domain.UserInfoVO;
import goott.spring.project1.persistence.MovieDAO;

@Service
public class MovieServiceImple implements MovieService{
	private static final Logger LOGGER =
			LoggerFactory.getLogger(MovieServiceImple.class);

	@Autowired
	private MovieDAO dao;

	@Override
	public List<MovieVO> read() throws Exception{
		LOGGER.info("service read() 호출");
		return dao.select();
	}

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

	// 로그인 세션 추가
	@Override
	public boolean login(UserInfoVO vo, HttpSession session) throws Exception {
		boolean result = dao.login(vo);
		LOGGER.info("serviceImple 확인 : " + result);
		if (result == true) {
			session.setAttribute("userId", vo.getUserId());
		}
		return result;
	}

	@Override
	public void logOut(HttpSession session) throws Exception {
		dao.logOut(session);
	}




}
