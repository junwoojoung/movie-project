package goott.spring.project1.service;

import java.util.List;

import goott.spring.project1.domain.MovieVO;
import goott.spring.project1.domain.ReserveVO;
import goott.spring.project1.domain.RunningTimeVO;
import goott.spring.project1.domain.TheaterVO;
import goott.spring.project1.domain.UserInfoVO;

public interface MovieService {
	public abstract List<MovieVO> read() throws Exception;

	public abstract List<MovieVO> AllmovieList() throws Exception;

	public abstract List<TheaterVO> theaterList() throws Exception;

	public abstract MovieVO getPoster(String movieName) throws Exception;

	public abstract List<RunningTimeVO> runningTimeInfo(RunningTimeVO vo) throws Exception;

	public abstract void register(UserInfoVO vo) throws Exception;

	public abstract int idChk(UserInfoVO vo) throws Exception;

	public abstract UserInfoVO login(String userId, String userPw) throws Exception;

	public abstract void memberUpdate(UserInfoVO vo) throws Exception;

	public abstract void memberDelete(UserInfoVO vo) throws Exception;

	public abstract int pwChk(UserInfoVO vo) throws Exception;

	public abstract List<ReserveVO> reserveSelect() throws Exception;





}
