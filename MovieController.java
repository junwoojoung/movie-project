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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.domain.ReserveVO;
import goott.spring.project1.domain.RunningTimeVO;
import goott.spring.project1.domain.TheaterVO;
import goott.spring.project1.domain.UserInfoVO;
import goott.spring.project1.service.MovieService;

@Controller
public class MovieController {
	private static final Logger LOGGER =
	         LoggerFactory.getLogger(MovieController.class);

	@Autowired
	private MovieService movieservice;

	@Autowired
	PasswordEncoder pwEncoder;


	// 메인화면 get
	@GetMapping("movie/index")
	public void index(Model model) throws Exception {
		LOGGER.info("indexGet() 호출");
		List<MovieVO> list;
		list = movieservice.read();
//		LOGGER.info("indexGet() : " + list);
		model.addAttribute("list", list);
	}

	// 상영 시간표 get
	@GetMapping("movie/running-time")
	public void movie_list(Model model) throws Exception {
		LOGGER.info("movie_listGet() 호출");

		// 영화별 클릭 시 모든 영화 목록을 출력해주기 위함
		List<MovieVO> allList;
		allList = movieservice.AllmovieList();
//		LOGGER.info("영화 정보 : " + allList);
		model.addAttribute("allList", allList);

		// 극장별 클릭 시 모든 극장에 대한 목록을 출력해주기 위함
		List<TheaterVO> theater;
		theater = movieservice.theaterList();
//		LOGGER.info("상영관 정보 : " + theater);
		model.addAttribute("theater", theater);

	}

	// 상영 시간표 (영화 정보 가져오기) post
	@PostMapping("movie/movie-info")
	@ResponseBody
	public String movie_list(String movieName) throws Exception {
		LOGGER.info("movie_listGet() 호출");
		LOGGER.info("영화 이름 : " + movieName);

		MovieVO poster = movieservice.getPoster(movieName);
		LOGGER.info("아이디 반환 값 : " + poster.getMovieId());
		String posterData = poster.getMovieId();
		return posterData;
	}

	// 상영 시간표 (상영중인 영화, 상영관 정보 가져오기) post
	@PostMapping("movie/running-time")
	@ResponseBody
	public List<RunningTimeVO> runningMovie(@RequestBody RunningTimeVO vo) throws Exception {
		LOGGER.info("runningMovie() 호출");
		LOGGER.info("가져온 데이터 값 : " + vo.toString());

		List<RunningTimeVO> info = movieservice.runningTimeInfo(vo);
		LOGGER.info("상영시간표 데이터 값 : " + info);
		return info;
	}

	// 로그인 get
	@GetMapping("login/login")
	public void login() {
		LOGGER.info("loginGet() 호출");
	}

	// 로그인 post
	@PostMapping("login/login")
	@ResponseBody
	public String login(String userId, String userPw, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		LOGGER.info("loginPost() 호출");
		LOGGER.info("userId : " + userId);
		LOGGER.info("userPw : " + userPw);

		HttpSession session = req.getSession();
		UserInfoVO login = movieservice.login(userId, userPw);
		boolean pwMatch = pwEncoder.matches(userPw, login.getUserPw());
		LOGGER.info("입력한 비밀번호 : " + userPw);
		LOGGER.info("암호화 비밀번호 : " + login.getUserPw());
		LOGGER.info("가져온 데이터 값 : " + login);

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
	@GetMapping("login/logOut")
	public String logout(HttpSession session) throws Exception{
		LOGGER.info("logoutGet() 호출");
		session.invalidate();
		return "redirect:/movie/index";
	}

	// 회원가입창 get
	@GetMapping("login/join")
	public void join() {
		LOGGER.info("joinGet() 호출");
	}

	// 실명인증창 get
	@GetMapping("login/auth")
	public void auth() {
		LOGGER.info("authGet 호출");
	}

	// 약관동의창 get
	@GetMapping("login/tos")
	public void tos(String name, String ssn1 , String ssn2, String phone, Model model) {
		LOGGER.info("tosGet() 호출");
		LOGGER.info("step1 -> step2 : " + name + ", " + ssn1 + ", " + ssn2 + ", " + phone);
		model.addAttribute("name", name);
		model.addAttribute("ssn1", ssn1);
		model.addAttribute("ssn2", ssn2);
		model.addAttribute("phone", phone);
	}

	// 회원가입 get
	@GetMapping("login/info-input")
	public void info_input(String name, String ssn1 , String ssn2, String phone, Model model) {
		LOGGER.info("info_input() 호출");
		LOGGER.info("step2 -> step3 : " + name + ", " + ssn1 + ", " + ssn2 + ", " + phone);
		model.addAttribute("name", name);
		model.addAttribute("ssn1", ssn1);
		model.addAttribute("ssn2", ssn2);
		model.addAttribute("phone", phone);
	}

	// 회원가입 post
	@PostMapping("login/info-input")
	public String postRegister(UserInfoVO vo) throws Exception {
		LOGGER.info("postRegisterGet() 호출");
		LOGGER.info("가져온 데이터 값 : " + vo.toString());
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
		} catch (Exception e) {
	}
		return "redirect:/login/join-complete";
	}

	// 아이디 중복체크
	@PostMapping("login/userIdChk")
	@ResponseBody
	public int idChk(UserInfoVO vo) throws Exception{
		LOGGER.info("idChkGet() 호출");
		LOGGER.info("가져온 데이터 값 : " + vo);
		int result = movieservice.idChk(vo);
		return result;
	}

	// 회원가입 성공 페이지
	@RequestMapping(value = "login/join-complete", method = {RequestMethod.GET,RequestMethod.POST})
	public void joinComple() {
		LOGGER.info("joinCompleGet() 호출");
	}

	// 내정보 get
	@GetMapping("member/mypage")
	public void myPage(Model model) throws Exception {
		LOGGER.info("mypageGet() 호출");

		List<ReserveVO> list;
		list = movieservice.reserveSelect();
		LOGGER.info("예매정보 출력 값 : " + list);
		model.addAttribute("reserve", list);
	}

	// 내정보 post
	@PostMapping("member/mypage")
	public void myPage() throws Exception {
		LOGGER.info("mypagePost() 호출");
	}

	// 회원 수정 get
	@GetMapping("member/info-update")
	public void memberUpdate() throws Exception{
		LOGGER.info("memberUpdateGet() 호출");
	}

	// 회원 수정 post
	@PostMapping("member/info-update")
	public String memberUpdate(UserInfoVO vo, HttpSession session) throws Exception {
		LOGGER.info("memberUpdatePost() 호출");
		LOGGER.info("가져온 데이터 값 : " + vo.toString());
		movieservice.memberUpdate(vo);

		session.invalidate(); // 세션 삭제
		return "redirect:/movie/index";
	}

	// 회원 삭제 get
	@GetMapping("member/info-delete")
	public void memberDelete() {
		LOGGER.info("memberDeleteGet() 호출");
	}

	// 회원 삭제 post
	@PostMapping("member/info-delete")
	public String memberDelete(UserInfoVO vo, HttpSession session, RedirectAttributes rttr) throws Exception {
		LOGGER.info("memberDeletePost() 호출");
		LOGGER.info("가져온 데이터 값 : " + vo.toString());

		movieservice.memberDelete(vo);
		session.invalidate();

		return "redirect:/movie/index";
	}

	// 비밀번호 체크
	@ResponseBody
	@PostMapping("movie/pwChk")
	public boolean pwChk(UserInfoVO vo) throws Exception {
		LOGGER.info("pwChkPost() 호출");
		LOGGER.info("가져온 데이터 값 : " + vo.toString());

		UserInfoVO login = movieservice.login(vo.getUserId(),vo.getUserPw());
		boolean pwChk = pwEncoder.matches(vo.getUserPw(), login.getUserPw());
		LOGGER.info("기존 비밀번호 : " +vo.getUserPw());
		LOGGER.info("암호화 비밀번호 : " + login.getUserPw());
		LOGGER.info("true or false : " + pwChk);
		return pwChk;
	}

}
