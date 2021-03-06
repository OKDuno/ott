package ott.zerock.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import ott.zerock.domain.BoardVO;
import ott.zerock.domain.Criteria;
import ott.zerock.domain.MemberVO;
import ott.zerock.domain.MovieVO;






public interface MemberService {

	//회원가입
	public void register(MemberVO vo) throws Exception;
	
	//로그인
	public MemberVO login(MemberVO vo);
	
	//회원정보수정
	public void memberUpdate(MemberVO vo) throws Exception;

	//회원탈퇴
	public void memberDelete(MemberVO vo) throws Exception;
	
	//패스워드 체크
	public int passChk(MemberVO vo) throws Exception;

	//아이디중복확인
	public int idChk(MemberVO vo) throws Exception;

	// 내가쓴 게시글
	public List<BoardVO> myReview(String userId) throws Exception;
	
	//영화 목록
	public List<MovieVO> getList(String userId);
	
	//내가 쓴 게시글 페이징
	public List<BoardVO> myReviewWithPaging(String userId, Criteria cri);
	
	//내가 쓴 게시글 글 개수
	public int count(Criteria cri);	

	//내가 쓴 영화 페이징
	public List<MovieVO> getListWithPaging(@Param("userId")String userId,
			@Param("cri")Criteria cri);
	
	//내가 쓴 영화글 글 개수
	public int getListCount(Criteria cri);	
}
