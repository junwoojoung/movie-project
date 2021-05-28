package goott.spring.project1.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.domain.UserInfoVO;
import goott.spring.project1.service.MovieService;

@Controller
@RequestMapping(value = "/movie") // url : /project1/movie
public class MovieController {
	private static final Logger LOGGER =
	         LoggerFactory.getLogger(MovieController.class);

	@Autowired
	private MovieService movieservice;


	@GetMapping("/index")
	public void index(Model model) throws Exception {
		LOGGER.info("main 화면 호출");
		List<MovieVO> list;
		list = movieservice.read();
		model.addAttribute("list", list);

	}

	@GetMapping("/login")
	public void login() {
		LOGGER.info("get-login 팝업창 호출");
	}

	@PostMapping("/login")
	@ResponseBody
	public String login(String userId, String userPw, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		LOGGER.info("post-login 접속");
		LOGGER.info("userId : " + userId);
		LOGGER.info("userPw : " + userPw);

		HttpSession session = req.getSession();
		UserInfoVO login = movieservice.login(userId, userPw);

		LOGGER.info("login : " + login);

		if (login == null) {
			LOGGER.info("login Null");
			session.setAttribute("member", null);
			return "fail";
		} else {
			LOGGER.info("login Not Null");
			session.setAttribute("member", login);
			return "success";
		}
	}

	@GetMapping("/logOut")
	public String logout(HttpSession session) throws Exception{

		session.invalidate();

		return "redirect:/movie/index";

	}


	@GetMapping("/join")
	public void join() {
		LOGGER.info("회원가입 화면 호출 test");
	}

	@GetMapping("/auth")
	public void auth() {
		LOGGER.info("실명인증 팝업창 호출");
	}

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

	@RequestMapping(value = "/join-complete", method = {RequestMethod.GET,RequestMethod.POST})
	public void joinComple() {
		LOGGER.info("회원가입 성공화면");
	}


	@GetMapping("/movie-list")
	public void movie() {
		LOGGER.info("영화 목록");
	}

	@GetMapping("/mypage")
	public void myPage() {
		LOGGER.info("get : 내정보 확인 페이지");
	}

	@GetMapping("/info-update")
	public void memberUpdate() throws Exception{
		LOGGER.info("get : 회원정보 수정 페이지");
	}

	@PostMapping("/info-update")
	public String memberUpdate(UserInfoVO vo, HttpSession session) throws Exception {
		LOGGER.info("post : 회원정보 수정 페이지");
		LOGGER.info("Controller : " + vo.toString());
		movieservice.memberUpdate(vo);

		session.invalidate();

		return "redirect:/movie/index";
	}

	@GetMapping("info-delete")
	public void memberDelete() {
		LOGGER.info("get : 회원정보 삭제 페이지");
	}

	@PostMapping("info-delete")
	public String memberDelete(UserInfoVO vo, HttpSession session, RedirectAttributes rttr) throws Exception {
		LOGGER.info("post : 회원정보 삭제 페이지");
		LOGGER.info(vo.toString());
		// 세션에 있는 member를 가져와 member 변수에 넣는다
//		UserInfoVO member = (UserInfoVO) session.getAttribute("member");
		// 세션에 있는 비밀번호
//		String sessionPw = member.getUserPw();
		// vo로 들어오는 비밀번호
//		String voPw = vo.getUserPw();
//		LOGGER.info("세션 비밀번호 : " + sessionPw);
//		LOGGER.info("vo 비밀번호 : " + voPw);
//
//		if (!(sessionPw.equals(voPw))) {
//			rttr.addFlashAttribute("msg", false);
//			return "redirect:/movie/info-delete";
//		}
		movieservice.memberDelete(vo);

		session.invalidate();

		return "redirect:/movie/index";
	}

	// 비밀번호 체크
	@ResponseBody
	@PostMapping("/pwChk")
	public int pwChk(UserInfoVO vo) throws Exception {
		LOGGER.info("Controller : " + vo.toString());
		int result = movieservice.pwChk(vo);
		LOGGER.info("리턴 값" + result);
		return result;
	}


}
