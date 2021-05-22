package goott.spring.project1.persistence;

import java.util.List;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.domain.UserInfoVO;

public interface MovieDAO {
	// 1~4위 영화 검색
	public abstract List<MovieVO> select() throws Exception;

	// 회원가입
	public abstract void insert(UserInfoVO vo) throws Exception;

	// 아이디 중복 확인
	public abstract int idChk(UserInfoVO vo) throws Exception;

	// 로그인
	public abstract boolean login(UserInfoVO vo) throws Exception;


}
