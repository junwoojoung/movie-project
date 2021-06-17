package goott.spring.project1;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import goott.spring.project1.domain.MovieVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
@WebAppConfiguration
public class SqlSessionTest {
	private static final Logger LOGGER =
			LoggerFactory.getLogger(SqlSessionTest.class);
	private static final String NAMESPACE =
			"goott.spring.project1.MovieMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@Test
	public void select_popular() {
		List<Object> vo = sqlSession.selectList(NAMESPACE + ".select_popular");
		LOGGER.info(vo + "출력");
	}
}
