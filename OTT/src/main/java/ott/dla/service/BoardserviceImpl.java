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
//		log.info("�� ��Ϻ���");
//		return mapper.getList();
//	}

	@Override
	public void insert(BoardVO board) {
		log.info("�� �����ϱ�"+ board);
		mapper.insert(board);
	}

	@Override
	public BoardVO read(Long bno) {
		log.info("�� ��ȸ�ϱ�"+ bno);
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		log.info("�� ����"+board);
		return mapper.modify(board)==1;
		
	}

	@Override
	public boolean delete(Long bno) {
		log.info("�� �����ϱ�"+ bno);
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
		log.info("�� ����");
		return mapper.count(cri);
	}

}
