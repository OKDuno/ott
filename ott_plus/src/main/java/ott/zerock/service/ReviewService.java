package ott.zerock.service;

import java.util.List;

import ott.zerock.domain.Criteria;
import ott.zerock.domain.ReviewVO;



public interface ReviewService {
	
	//�۸�Ϻ���
	//public List<BoardVO> getList();
	//�ۻ���
	public void insert(ReviewVO review);
	//����ȸ
	public ReviewVO read(Long rev_bno);
	//�ۻ���
	public boolean delete(Long rev_bno);
	//�ۼ���
	public boolean modify(ReviewVO review);
	//�� ��Ϻ���(����¡ ó��)
	public List<ReviewVO> getList(Criteria cri);
	//�۰���
	public int count(Criteria cri);
	
	
	
}
