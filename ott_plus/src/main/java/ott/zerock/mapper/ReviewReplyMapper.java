package ott.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import ott.zerock.domain.Criteria;
import ott.zerock.domain.ReviewReplyVO;



public interface ReviewReplyMapper {

	
	//등록작업
	public void writeReply(ReviewReplyVO vo);
	
	//조회작업
	public List<ReviewReplyVO> readReply(Long rev_bno);
	
	//삭제작업
	public void deleteReply(ReviewReplyVO vo);
	
	//수정작업
	public void updateReply(ReviewReplyVO vo);
	
	//선택된 댓글 조회
	public ReviewReplyVO selectReply(Long rev_rno);
	
	
	//페이징
	//두 개 이상의 데이터를 파라미터로 전달 (@Patam) 
	public List<ReviewReplyVO> getListWithPaging(
			@Param("cri") Criteria cri,
			@Param("rev_bno") Long rev_bno); //.xml의 #{bno}와 매칭
}
