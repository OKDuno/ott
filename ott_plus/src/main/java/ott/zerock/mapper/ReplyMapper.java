package ott.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import ott.zerock.domain.Criteria;
import ott.zerock.domain.ReplyVO;



public interface ReplyMapper {

	
	//등록작업
	public void writeReply(ReplyVO vo);
	
	//조회작업
	public List<ReplyVO> readReply(Long bno);
	
	//삭제작업
	public void deleteReply(ReplyVO vo);
	
	//수정작업
	public void updateReply(ReplyVO vo);
	
	//선택된 댓글 조회
	public ReplyVO selectReply(Long rno);
	
	
	//페이징
	//두 개 이상의 데이터를 파라미터로 전달 (@Patam) 
	public List<ReplyVO> getListWithPaging(
			@Param("cri") Criteria cri,
			@Param("bno") Long bno); //.xml의 #{bno}와 매칭
	
	//댓글의 숫자 파악
	public int getCountByBno(Long bno);
	
}
