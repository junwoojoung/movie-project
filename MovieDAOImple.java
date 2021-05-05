package goott.spring.project1.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import goott.spring.project1.domain.MovieVO;

@Repository
public class MovieDAOImple implements MovieDAO{
	private static final Logger LOGGER = LoggerFactory.getLogger(MovieDAOImple.class);
	private static final String NAMESPACE = "goott.spring.project1.MovieMapper";

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MovieVO> select() {
		LOGGER.info("관객수가 많은 1~4 순서대로 검색");
		return sqlSession.selectList(NAMESPACE + ".select");
	}

}
