package goott.spring.project1.controller;


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

import goott.spring.project1.domain.UserInfoVO;
import goott.spring.project1.service.MovieService;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
	private static final Logger LOGGER =
	         LoggerFactory.getLogger(MovieController.class);

	@Autowired
	private MovieService movieservice;

	@Autowired
	PasswordEncoder pwEncoder;


	// 로그인 get
	@GetMapping("/login")
	public void login() {
		LOGGER.info("loginGet() 호출");
	}

	// 로그인 post
	@PostMapping("/login")
	@ResponseBody
	public String login(String userId, String userPw, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		LOGGER.info("loginPost() 호출");
		LOGGER.info("userId : " + userId);
		LOGGER.info("userPw : " + userPw);

		HttpSession session = req.getSession();
		UserInfoVO login = movieservice.login(userId, userPw);
		LOGGER.info("가져온 데이터 값 : " + login);

		boolean pwMatch;
		if (login != null) {
			pwMatch = pwEncoder.matches(userPw, login.getUserPw());
//			LOGGER.info("입력한 비밀번호 : " + userPw);
//			LOGGER.info("암호화 비밀번호 : " + login.getUserPw());
		} else {
			pwMatch = false;
		}
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
		LOGGER.info("logoutGet() 호출");
		session.invalidate();
		return "redirect:/movie/index";
	}

	// 회원가입창 get
	@GetMapping("/join")
	public void join() {
		LOGGER.info("joinGet() 호출");
	}

	// 실명인증창 get
	@GetMapping("/auth")
	public void auth() {
		LOGGER.info("authGet 호출");
	}

	// 약관동의창 get
	@GetMapping("/tos")
	public void tos(String name, String ssn1 , String ssn2, String phone, Model model) {
		LOGGER.info("tosGet() 호출");
		LOGGER.info("step1 -> step2 : " + name + ", " + ssn1 + ", " + ssn2 + ", " + phone);
		model.addAttribute("name", name);
		model.addAttribute("ssn1", ssn1);
		model.addAttribute("ssn2", ssn2);
		model.addAttribute("phone", phone);
	}

	// 회원가입 get
	@GetMapping("/info-input")
	public void info_input(String name, String ssn1 , String ssn2, String phone, Model model) {
		LOGGER.info("info_input() 호출");
		LOGGER.info("step2 -> step3 : " + name + ", " + ssn1 + ", " + ssn2 + ", " + phone);
		model.addAttribute("name", name);
		model.addAttribute("ssn1", ssn1);
		model.addAttribute("ssn2", ssn2);
		model.addAttribute("phone", phone);
	}

	// 회원가입 post
	@PostMapping("/info-input")
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
	@PostMapping("/userIdChk")
	@ResponseBody
	public int idChk(UserInfoVO vo) throws Exception{
		LOGGER.info("idChkGet() 호출");
		LOGGER.info("가져온 데이터 값 : " + vo);
		int result = movieservice.idChk(vo);
		return result;
	}

	// 회원가입 성공 페이지
	@RequestMapping(value = "/join-complete", method = {RequestMethod.GET,RequestMethod.POST})
	public void joinComple() {
		LOGGER.info("joinCompleGet() 호출");
	}

}
