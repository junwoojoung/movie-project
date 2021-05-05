package goott.spring.project1.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.persistence.MovieDAO;

@Service
public class MovieServiceImple implements MovieService{
	private static final Logger LOGGER =
			LoggerFactory.getLogger(MovieServiceImple.class);

	@Autowired
	private MovieDAO dao;

	@Override
	public List<MovieVO> read() {
		LOGGER.info("service read() 호출");
		return dao.select();
	}

}
