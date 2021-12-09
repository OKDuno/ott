package ott.dla.mapper;

import java.util.List;

import ott.dla.domain.Criteria;
import ott.dla.domain.ReviewVO;

public interface ReviewMapper {

	//�۸�Ϻ���
	public List<ReviewVO> getList();
	//�� ����
	public void insert(ReviewVO review);
	//�� ��ȸ
	public ReviewVO read(Long rev_bno);
	//�� ����
	public int delete(Long rev_bno);
	//�� ����
	public int modify(ReviewVO review);
	//�� ��� ����(������ ����)
	public List<ReviewVO> getListWithPaging(Criteria cri);
	//�� ����
	public int count(Criteria cri);
	
	
}
