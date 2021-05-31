package goott.spring.project1.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.domain.TheaterVO;
import goott.spring.project1.domain.UserInfoVO;
import goott.spring.project1.service.MovieService;

@Controller
@RequestMapping(value = "/movie") // url : /project1/movie
public class MovieController {
	private static final Logger LOGGER =
	         LoggerFactory.getLogger(MovieController.class);

	@Autowired
	private MovieService movieservice;

	@Autowired
	PasswordEncoder pwEncoder;

	// 메인화면 get
	@GetMapping("/index")
	public void index(Model model) throws Exception {
		LOGGER.info("main 화면 호출");
		List<MovieVO> list;
		list = movieservice.read();
		model.addAttribute("list", list);
	}

	// 모든 영화 목록 get
	@GetMapping("/running-time")
	public void movie_list(Model model) throws Exception {
		LOGGER.info("모든 영화 목록 가져오기");

		List<MovieVO> allList;
		allList = movieservice.AllmovieList();
		model.addAttribute("allList", allList);

		LOGGER.info("상영관 정보 가져오기");

		List<TheaterVO> theater;
		theater = movieservice.theaterList();
		LOGGER.info("상영관 정보" + theater);
		model.addAttribute("theater", theater);

	}


	// 로그인 get
	@GetMapping("/login")
	public void login() {
		LOGGER.info("get-login 팝업창 호출");
	}

	// 로그인 post
	@PostMapping("/login")
	@ResponseBody
	public String login(String userId, String userPw, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		LOGGER.info("post-login 접속");
		LOGGER.info("userId : " + userId);
		LOGGER.info("userPw : " + userPw);

		HttpSession session = req.getSession();
		UserInfoVO login = movieservice.login(userId, userPw);
		boolean pwMatch = pwEncoder.matches(userPw, login.getUserPw());
		LOGGER.info(userPw + login.getUserPw());

		LOGGER.info("login : " + login);

		if (login != null && pwMatch == true) {
			LOGGER.info("login Not Null");
			session.setAttribute("member", login);
			return "success";
		} else {
			LOGGER.info("login Null");
			session.setAttribute("member", null);
			return "fail";
		}
	}

	// 로그아웃 get
	@GetMapping("/logOut")
	public String logout(HttpSession session) throws Exception{

		session.invalidate();

		return "redirect:/movie/index";

	}

	// 회원가입창 get
	@GetMapping("/join")
	public void join() {
		LOGGER.info("회원가입 화면 호출 test");
	}

	// 실명인증창 get
	@GetMapping("/auth")
	public void auth() {
		LOGGER.info("실명인증 팝업창 호출");
	}

	// 약관동의창 get
	@GetMapping("/tos")
	public void tos(String name, String ssn1 , String ssn2, String phone, Model model) {
		LOGGER.info("이용 약관 동의 페이지");
		LOGGER.info("stem1 -> stem2 : " + name + "\n" + ssn1 + "\n" + ssn2 + "\n" + phone);
		model.addAttribute("name", name);
		model.addAttribute("ssn1", ssn1);
		model.addAttribute("ssn2", ssn2);
		model.addAttribute("phone", phone);
	}

	// 회원가입 get
	@GetMapping("/info-input")
	public void info_input(String name, String ssn1 , String ssn2, String phone, Model model) {
		LOGGER.info("회원 정보 입력 페이지 호출");
		LOGGER.info("stem2 -> stem3 : \n" + name + "\n" + ssn1 + "\n" + ssn2 + "\n" + phone);
		model.addAttribute("name", name);
		model.addAttribute("ssn1", ssn1);
		model.addAttribute("ssn2", ssn2);
		model.addAttribute("phone", phone);
	}


	// 회원가입 post
	@PostMapping("/info-input")
	public String postRegister(UserInfoVO vo) throws Exception {
		LOGGER.info("회원정보 입력 데이터 삽입");
		LOGGER.info(vo.toString());
		int result = movieservice.idChk(vo);
		try {
			if (result == 1) {

				return "/info-input";
			} else if (result == 0) {
				String inputPw = vo.getUserPw();
				String pw = pwEncoder.encode(inputPw);
				vo.setUserPw(pw);

				String inputSsn = vo.getSsnBack();
				String ssnBack = pwEncoder.encode(inputSsn);
				vo.setSsnBack(ssnBack);

				movieservice.register(vo);
			}
			// 입력된 아이디가 존재하면 페이지 돌아가기
			// 존재하지 않으면 register
		} catch (Exception e) {
	}
		return "redirect:/movie/join-complete";
	}

	// 아이디 중복체크
	@PostMapping("/userIdChk")
	@ResponseBody
	public int idChk(UserInfoVO vo) throws Exception{
		int result = movieservice.idChk(vo);
		return result;
	}

	// 회원가입 성공 페이지
	@RequestMapping(value = "/join-complete", method = {RequestMethod.GET,RequestMethod.POST})
	public void joinComple() {
		LOGGER.info("회원가입 성공화면");
	}


	@GetMapping("/movie-list")
	public void movie() {
		LOGGER.info("영화 목록");
	}

	// 내정보 get
	@GetMapping("/mypage")
	public void myPage() {
		LOGGER.info("get : 내정보 확인 페이지");
	}

	// 회원 수정 get
	@GetMapping("/info-update")
	public void memberUpdate() throws Exception{
		LOGGER.info("get : 회원정보 수정 페이지");
	}

	// 회원 수정 post
	@PostMapping("/info-update")
	public String memberUpdate(UserInfoVO vo, HttpSession session) throws Exception {
		LOGGER.info("post : 회원정보 수정 페이지");
		LOGGER.info("Controller : " + vo.toString());
		movieservice.memberUpdate(vo);

		session.invalidate();

		return "redirect:/movie/index";
	}

	// 회원 삭제 get
	@GetMapping("/info-delete")
	public void memberDelete() {
		LOGGER.info("get : 회원정보 삭제 페이지");
	}

	// 회원 삭제 post
	@PostMapping("/info-delete")
	public String memberDelete(UserInfoVO vo, HttpSession session, RedirectAttributes rttr) throws Exception {
		LOGGER.info("post : 회원정보 삭제 페이지");
		LOGGER.info(vo.toString());

		movieservice.memberDelete(vo);
		session.invalidate();

		return "redirect:/movie/index";
	}

	// 비밀번호 체크
	@ResponseBody
	@PostMapping("/pwChk")
	public boolean pwChk(UserInfoVO vo) throws Exception {
//		LOGGER.info("Controller : " + vo.toString());
//		int result = movieservice.pwChk(vo);
//		LOGGER.info("리턴 값" + result);
//		return result;

		UserInfoVO login = movieservice.login(vo.getUserId(),vo.getUserPw());
		boolean pwChk = pwEncoder.matches(vo.getUserPw(), login.getUserPw());
		LOGGER.info("기존 비밀번호 : " +vo.getUserPw());
		LOGGER.info("암호화 비밀번호 : " + login.getUserPw());
		LOGGER.info("true or false : " + pwChk);
		return pwChk;

	}


}
