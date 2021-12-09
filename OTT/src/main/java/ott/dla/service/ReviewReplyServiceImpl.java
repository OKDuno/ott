package ott.dla.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import ott.dla.domain.Criteria;
import ott.dla.domain.ReviewReplyVO;
import ott.dla.mapper.ReviewReplyMapper;


@Service
@Log4j
public class ReviewReplyServiceImpl implements ReviewReplyService {

	@Setter(onMethod_ = @Autowired)
	private ReviewReplyMapper mapper;
	
	
	@Override
	public void writeReply(ReviewReplyVO vo) {
		log.info("register...." + vo);
		mapper.writeReply(vo);
	}

	@Override
	public List<ReviewReplyVO> readReply(Long rev_bno) {
		log.info("register...." + rev_bno);
		return mapper.readReply(rev_bno);
	}

	@Override
	public void deleteReply(ReviewReplyVO vo) {
		log.info("remove...." + vo);
		mapper.deleteReply(vo);
	}

	@Override
	public void updateReply(ReviewReplyVO vo) {
		log.info("modifyㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ...." + vo);
		mapper.updateReply(vo);
	}
	
	//선택된 댓글 조회
	public ReviewReplyVO selectReply(Long rev_rno) {
		log.info("select...."+rev_rno);
		return mapper.selectReply(rev_rno);
	}
	

	@Override
	public List<ReviewReplyVO> getList(Criteria cri, Long rev_bno) {
		log.info("getList...." + rev_bno);
		return mapper.getListWithPaging(cri, rev_bno);
	}

}
