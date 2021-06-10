package goott.spring.project1.controller;

import java.util.List;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.domain.RunningTimeVO;
import goott.spring.project1.domain.TheaterVO;
import goott.spring.project1.service.MovieService;

@Controller
@RequestMapping(value = "/movie")
public class MovieController {
	private static final Logger LOGGER =
	         LoggerFactory.getLogger(MovieController.class);

	@Autowired
	private MovieService movieservice;

	// 메인화면 get
	@GetMapping("/index")
	public void index(Model model) throws Exception {
		LOGGER.info("indexGet() 호출");
		List<MovieVO> list;
		list = movieservice.read();
//		LOGGER.info("indexGet() : " + list);
		model.addAttribute("list", list);
	}

	// 상영 시간표 get
	@GetMapping("/running-time")
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
	@PostMapping("/movie-info")
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
	@PostMapping("/running-time")
	@ResponseBody
	public List<RunningTimeVO> runningMovie(@RequestBody RunningTimeVO vo) throws Exception {
		LOGGER.info("runningMovie() 호출");
		LOGGER.info("가져온 데이터 값 : " + vo.toString());

		List<RunningTimeVO> info = movieservice.runningTimeInfo(vo);
		LOGGER.info("상영시간표 데이터 값 : " + info);
		return info;
	}

}
