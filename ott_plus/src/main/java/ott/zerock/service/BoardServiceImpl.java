package ott.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import ott.zerock.domain.BoardVO;
import ott.zerock.domain.Criteria;
import ott.zerock.mapper.BoardMapper;

@AllArgsConstructor
@Log4j
@Service
public class BoardServiceImpl implements BoardService {

	private BoardMapper mapper;
	
//	@Override
//	public List<BoardVO> getList() {
//		log.info("�� ��Ϻ���");
//		return mapper.getList();
//	}

	@Override
	public void insert(BoardVO board) {
		log.info("등록"+ board);
		mapper.insert(board);
	}

	@Override
	public BoardVO read(Long bno) {
		log.info("읽기"+ bno);
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		log.info("수정"+board);
		return mapper.modify(board)==1;
		
	}

	@Override
	public boolean delete(Long bno) {
		log.info("삭제"+ bno);
		return mapper.delete(bno)==1;
	}

	//������ ó��
	@Override
	public List<BoardVO> getList(Criteria cri) {
		return mapper.getListWithPaging(cri);
	}

	//�۰���
	@Override
	public int count(Criteria cri) {
		log.info("개수");
		return mapper.count(cri);
	}

}
