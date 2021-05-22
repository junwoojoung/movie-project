package goott.spring.project1.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.domain.UserInfoVO;

public interface MovieService {
	public abstract List<MovieVO> read() throws Exception;

	public abstract void register(UserInfoVO vo) throws Exception;

	public abstract int idChk(UserInfoVO vo) throws Exception;

	public abstract boolean login(UserInfoVO vo,HttpSession session) throws Exception;









}
