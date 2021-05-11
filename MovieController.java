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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import goott.spring.project1.domain.MovieVO;
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
	public void tos(String name, Model model) {
		LOGGER.info("이용 약관 동의 페이지");
		LOGGER.info("첫번째 값 받기 : " + name);
		model.addAttribute("name", name);
	}

	@GetMapping("/info-input")
	public void info_input(String name, Model model) {
		LOGGER.info("회원 정보 입력 페이지");
		LOGGER.info("두번째 값 받기 : "+ name);
		model.addAttribute("name", name);
	}




}
