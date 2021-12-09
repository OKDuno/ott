package ott.dla.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import ott.dla.domain.Criteria;
import ott.dla.domain.ReplyPageDTO;
import ott.dla.domain.ReplyVO;
import ott.dla.mapper.ReplyMapper;


@Service
@Log4j
public class ReplyServiceImpl implements ReplyService {

	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	
	
	@Override
	public void writeReply(ReplyVO vo) {
		log.info("register...." + vo);
		mapper.writeReply(vo);
	}

	@Override
	public List<ReplyVO> readReply(Long bno) {
		log.info("register...." + bno);
		return mapper.readReply(bno);
	}

	@Override
	public void deleteReply(ReplyVO vo) {
		log.info("remove...." + vo);
		mapper.deleteReply(vo);
	}

	@Override
	public void updateReply(ReplyVO vo) {
		log.info("modify...." + vo);
		mapper.updateReply(vo);
	}
	
	//선택된 댓글 조회
	public ReplyVO selectReply(Long rno) {
		return mapper.selectReply(rno);
	}
	

	@Override
	public List<ReplyVO> getList(Criteria cri, Long bno) {
		log.info("getList...." + bno);
		return mapper.getListWithPaging(cri, bno);
	}

	
	//댓글 페이징
	@Override
	public ReplyPageDTO getListPage(Criteria cri, Long bno) {
		return new ReplyPageDTO(
		mapper.getCountByBno(bno),
		mapper.getListWithPaging(cri, bno));
	}

}
