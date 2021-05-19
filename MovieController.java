package goott.spring.project1.controller;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.domain.UserinfoVO;
import goott.spring.project1.service.MovieService;

@Controller
@RequestMapping(value = "/movie") // url : /project1/movie
public class MovieController {
	private static final Logger LOGGER =
	         LoggerFactory.getLogger(MovieController.class);

	@Autowired
	private MovieService movieservice;

	@GetMapping("/index")
	public void index(Model model) {
		LOGGER.info("main 화면 호출");
		List<MovieVO> list;
		list = movieservice.read();
		model.addAttribute("list", list);

	}

	@GetMapping("/login")
	public void login() {
		LOGGER.info("login 팝업창 호출");
	}

	@GetMapping("/join")
	public void join() {
		LOGGER.info("회원가입 화면 호출");
	}

	@RequestMapping("/auth")
	public String auth() {
		LOGGER.info("실명인증 팝업창 호출");
		return "movie/auth";
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
	public String postRegister(UserinfoVO vo) throws Exception {
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


	@RequestMapping(value = "/join-complete", method = {RequestMethod.GET,RequestMethod.POST})
	public void joinComple() {
		LOGGER.info("회원가입 성공화면");
	}


	// 아이디 중복체크
	@ResponseBody
	@RequestMapping(value = "/userIdChk", method = RequestMethod.POST)
	public int idChk(UserinfoVO vo) throws Exception{
		int result = movieservice.idChk(vo);
		return result;
	}







}
