package goott.spring.project1.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.domain.ReserveVO;
import goott.spring.project1.domain.RunningTimeVO;
import goott.spring.project1.domain.TheaterVO;
import goott.spring.project1.domain.UserInfoVO;

@Repository
public class MovieDAOImple implements MovieDAO{
	private static final Logger LOGGER = LoggerFactory.getLogger(MovieDAOImple.class);
	private static final String NAMESPACE = "goott.spring.project1.MovieMapper";

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MovieVO> select() throws Exception {
		LOGGER.info("1~4위 영화 리스트");
		return sqlSession.selectList(NAMESPACE + ".select");
	}

	@Override
	public List<MovieVO> allSelect() throws Exception {
		LOGGER.info("전체 영화 리스트");
		return sqlSession.selectList(NAMESPACE + ".allSelect");
	}

	@Override
	public List<TheaterVO> theaterList() throws Exception {
		LOGGER.info("상영관 정보 가져오기");
		return sqlSession.selectList(NAMESPACE + ".theater");
	}

	@Override
	public MovieVO getPoster(String movieName) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".getPoster", movieName);
	}

	@Override
	public List<RunningTimeVO> runningTimeInfo(RunningTimeVO vo) {
		return sqlSession.selectList(NAMESPACE + ".runningTime", vo);
	}

	@Override
	public void insert(UserInfoVO vo) throws Exception {
		LOGGER.info("입력한 정보 삽입");
		sqlSession.insert(NAMESPACE + ".memberInsert", vo);
	}

	@Override
	public int idChk(UserInfoVO vo) throws Exception{
		int result = sqlSession.selectOne(NAMESPACE + ".idChk", vo);
		return result;
	}

	@Override
	public UserInfoVO login(String userId, String userPw) throws Exception{
		LOGGER.info("dao imple");
		LOGGER.info("userId : " + userId);
		LOGGER.info("userPw : " + userPw);
		Map<String, String> chk = new HashMap<String, String>();
		chk.put("userId", userId);
		chk.put("userPw", userPw);
		return sqlSession.selectOne(NAMESPACE + ".login", chk);

	}

	@Override
	public void memberUpdate(UserInfoVO vo) throws Exception {
		LOGGER.info("dao imple");
		LOGGER.info("vo : " + vo.toString());
		sqlSession.update(NAMESPACE + ".memberUpdate", vo);
	}

	@Override
	public void memeberDelete(UserInfoVO vo) throws Exception {
		LOGGER.info("dao imple");
		LOGGER.info("vo : " + vo.toString());
		sqlSession.update(NAMESPACE + ".memberDelete", vo);
	}

	@Override
	public int pwChk(UserInfoVO vo) throws Exception {
		LOGGER.info("dao imple");
		LOGGER.info("vo : " + vo.toString());
		int result = sqlSession.selectOne(NAMESPACE + ".pwChk", vo);
		return result;
	}

	@Override
	public List<ReserveVO> reserveSelect() throws Exception {
		LOGGER.info("dao imple");
		return sqlSession.selectList(NAMESPACE + ".reserve");
	}






}
