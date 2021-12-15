package ott.dla.mapper;

import java.util.List;


import ott.dla.domain.BoardVO;
import ott.dla.domain.MemberVO;
import ott.dla.domain.MovieVO;

public interface MemberMapper {

	// 회원가입
	public void register(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;
	
	// 회원정보 수정
	public void memberUpdate(MemberVO vo)throws Exception;
	
	// 회원 탈퇴
	public void memberDelete(MemberVO vo)throws Exception;
	
	// 패스워드 체크
	public int passChk(MemberVO vo) throws Exception;

	// 아이디 중복체크
	public int idChk(MemberVO vo) throws Exception;
	
	// 내가쓴 게시글
	public List<BoardVO> myReview(String userId);

	//영화 목록보기
	public List<MovieVO> getList(String userId);
}
