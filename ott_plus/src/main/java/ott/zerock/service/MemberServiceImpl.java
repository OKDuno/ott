package ott.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import ott.zerock.domain.BoardVO;
import ott.zerock.domain.Criteria;
import ott.zerock.domain.MemberVO;
import ott.zerock.domain.MovieVO;
import ott.zerock.mapper.MemberMapper;


@AllArgsConstructor
@Log4j
@Service
public class MemberServiceImpl implements MemberService {

	private MemberMapper mapper;
	
	//회원가입
	@Override
	public void register(MemberVO vo) throws Exception {
		mapper.register(vo);
	}

	//로그인
	@Override
	public MemberVO login(MemberVO vo) {
		return mapper.login(vo);
	}
	
	//회원정보수정
	//Controller에서 보내는 파라미터들을 memberUpdate(MemberVO vo)로 받고
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		//받은 vo를 DAO로 보내줍니다.
		mapper.memberUpdate(vo);
	}
	
	// 업데이트에서 처리한 내용과 같습니다.
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		mapper.memberDelete(vo);
	}
	
	// 패스워드 체크
	@Override
	public int passChk(MemberVO vo) throws Exception {
		int result = mapper.passChk(vo);
		return result;
	}
	
	// 아이디 중복 체크
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = mapper.idChk(vo);
		return result;
	}

	// 내가 쓴 게시글 목록
	@Override
	public List<BoardVO> myReview(String userId) throws Exception {
		// TODO Auto-generated method stub
		return mapper.myReview(userId);
	}
	
	//영화 목록
	@Override
	public List<MovieVO> getList(String userId) {
		// TODO Auto-generated method stub
		return mapper.getList(userId);
	}	

	// 내가 쓴 게시글 목록 페이징
	@Override
	public List<BoardVO> myReviewWithPaging(String userId, Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.myReviewWithPaging(userId, cri);
	}
	
	//내가 쓴 게시물 글 개수
	@Override
	public int count(Criteria cri) {
		log.info("개수");
		return mapper.count(cri);
	}

	// 내가 쓴 게시글 목록 페이징
	@Override
	public List<MovieVO> getListWithPaging(String userId, Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getListWithPaging(userId, cri);
	}
	
	//내가 쓴 게시물 글 개수
	@Override
	public int getListCount(Criteria cri) {
		log.info("개수");
		return mapper.getListCount(cri);
	}
}
