package ott.zerock.service;

import java.util.List;

import ott.zerock.domain.Criteria;
import ott.zerock.domain.ReplyVO;


public interface ReplyService {
	//등록작업
	public void writeReply(ReplyVO vo);
	
	//조회작업
	public List<ReplyVO> readReply(Long rno);
	
	//삭제작업
	public void deleteReply(ReplyVO vo);
	
	//수정작업
	public void updateReply(ReplyVO vo);
	
	//선택된 댓글 조회
	public ReplyVO selectReply(Long rno);
	
	//페이징
	public List<ReplyVO> getList(Criteria cri, Long bno);
	
	
	
	
}
