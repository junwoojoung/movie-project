package goott.spring.project1.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.domain.UserInfoVO;

@Repository
public class MovieDAOImple implements MovieDAO{
	private static final Logger LOGGER = LoggerFactory.getLogger(MovieDAOImple.class);
	private static final String NAMESPACE = "goott.spring.project1.MovieMapper";

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MovieVO> select() throws Exception {
		LOGGER.info("관객수가 많은 1~4 순서대로 검색");
		return sqlSession.selectList(NAMESPACE + ".select");
	}

	@Override
	public void insert(UserInfoVO vo) throws Exception {
		LOGGER.info("입력한 정보 삽입");
		sqlSession.insert(NAMESPACE + ".insert", vo);
	}


	@Override
	public int idChk(UserInfoVO vo) throws Exception{
		int result = sqlSession.selectOne(NAMESPACE + ".idChk", vo);
		return result;
	}

	@Override
	public boolean login(UserInfoVO vo) throws Exception {
		LOGGER.info("로그인 확인 기능 처리");
		int result = sqlSession.selectOne(NAMESPACE + ".login", vo);
		LOGGER.info("DAOIple 확인 : " + result);

		// 검색이 안 되면 0을 반환해주기 때문에 0과 비교해서 참이면 false, 거짓이면 true를 반환
		return (result == 0)? false:true;

	}

}
