package ott.dla.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import ott.dla.domain.BoardVO;
import ott.dla.domain.Criteria;
import ott.dla.domain.ReviewVO;
import ott.dla.mapper.ReviewMapper;


@AllArgsConstructor
@Log4j
@Service
public class ReviewServiceImpl implements ReviewService {

	
	private ReviewMapper mapper;
	
	
//	@Override
//	public List<BoardVO> getList() {
//		log.info("�� ��Ϻ���");
//		return mapper.getList();
//	}

	@Override
	public void insert(ReviewVO review) {
		log.info("삽입"+ review);
		mapper.insert(review);
	}

	@Override
	public ReviewVO read(Long rev_bno) {
		log.info("읽기"+ rev_bno);
		return mapper.read(rev_bno);
	}

	@Override
	public boolean modify(ReviewVO review) {
		log.info("수정"+review);
		return mapper.modify(review)==1;
		
	}

	@Override
	public boolean delete(Long rev_bno) {
		log.info("삭제"+ rev_bno);
		return mapper.delete(rev_bno)==1;
	}

	//������ ó��
	@Override
	public List<ReviewVO> getList(Criteria cri) {
		return mapper.getListWithPaging(cri);
	}

	//�۰���
	@Override
	public int count(Criteria cri) {
		log.info("개수");
		return mapper.count(cri);
	}

}
