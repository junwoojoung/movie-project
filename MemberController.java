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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import goott.spring.project1.domain.ReserveVO;
import goott.spring.project1.domain.UserInfoVO;
import goott.spring.project1.service.MovieService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {
	private static final Logger LOGGER =
	         LoggerFactory.getLogger(MovieController.class);

	@Autowired
	private MovieService movieservice;

	@Autowired
	PasswordEncoder pwEncoder;


	// 내정보 get
	@GetMapping("/mypage")
	public void myPage(Model model) throws Exception {
		LOGGER.info("mypageGet() 호출");

		List<ReserveVO> list;
		list = movieservice.reserveSelect();
		LOGGER.info("예매정보 출력 값 : " + list);
		model.addAttribute("reserve", list);
	}

	// 내정보 post
	@PostMapping("/mypage")
	public void myPage() throws Exception {
		LOGGER.info("mypagePost() 호출");
	}

	// 회원 수정 get
	@GetMapping("/info-update")
	public void memberUpdate() throws Exception{
		LOGGER.info("memberUpdateGet() 호출");
	}

	// 회원 수정 post
	@PostMapping("/info-update")
	public String memberUpdate(UserInfoVO vo, HttpSession session) throws Exception {
		LOGGER.info("memberUpdatePost() 호출");
		LOGGER.info("가져온 데이터 값 : " + vo.toString());
		movieservice.memberUpdate(vo);

		session.invalidate(); // 세션 삭제
		return "redirect:/movie/index";
	}

	// 회원 삭제 get
	@GetMapping("/info-delete")
	public void memberDelete() {
		LOGGER.info("memberDeleteGet() 호출");
	}

	// 회원 삭제 post
	@PostMapping("/info-delete")
	public String memberDelete(UserInfoVO vo, HttpSession session, RedirectAttributes rttr) throws Exception {
		LOGGER.info("memberDeletePost() 호출");
		LOGGER.info("가져온 데이터 값 : " + vo.toString());

		movieservice.memberDelete(vo);
		session.invalidate();

		return "redirect:/movie/index";
	}

	// 비밀번호 체크
	@ResponseBody
	@PostMapping("/pwChk")
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
