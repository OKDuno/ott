package ott.dla.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import ott.dla.domain.BoardVO;
import ott.dla.domain.Criteria;
import ott.dla.mapper.BoardMapper;

@AllArgsConstructor
@Log4j
@Service
public class BoardserviceImpl implements BoardService {

	private BoardMapper mapper;
	
//	@Override
//	public List<BoardVO> getList() {
//		log.info("글 목록보기");
//		return mapper.getList();
//	}

	@Override
	public void insert(BoardVO board) {
		log.info("글 삽입하기"+ board);
		mapper.insert(board);
	}

	@Override
	public BoardVO read(Long bno) {
		log.info("글 조회하기"+ bno);
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		log.info("글 수정"+board);
		return mapper.modify(board)==1;
		
	}

	@Override
	public boolean delete(Long bno) {
		log.info("글 삭제하기"+ bno);
		return mapper.delete(bno)==1;
	}

	//페이지 처리
	@Override
	public List<BoardVO> getList(Criteria cri) {
		return mapper.getListWithPaging(cri);
	}

	//글개수
	@Override
	public int count(Criteria cri) {
		log.info("글 개수");
		return mapper.count(cri);
	}

}
