package ott.dla.service;

import java.util.List;

import ott.dla.domain.Criteria;
import ott.dla.domain.ReviewReplyVO;

public interface ReviewReplyService {
	//등록작업
	public void writeReply(ReviewReplyVO vo);
	
	//조회작업
	public List<ReviewReplyVO> readReply(Long rev_rno);
	
	//삭제작업
	public void deleteReply(ReviewReplyVO vo);
	
	//수정작업
	public void updateReply(ReviewReplyVO vo);
	
	//선택된 댓글 조회
	public ReviewReplyVO selectReply(Long rev_rno);
	
	//페이징
	public List<ReviewReplyVO> getList(Criteria cri, Long rev_bno);
}
