package ott.dla.mapper;

import java.util.List;

import ott.dla.domain.BoardVO;
import ott.dla.domain.Criteria;

public interface BoardMapper {
	
	//�۸�Ϻ���
	public List<BoardVO> getList();
	//�� ����
	public void insert(BoardVO board);
	//�� ��ȸ
	public BoardVO read(Long bno);
	//�� ����
	public int delete(Long bno);
	//�� ����
	public int modify(BoardVO board);
	//�� ��� ����(������ ����)
	public List<BoardVO> getListWithPaging(Criteria cri);
	//�� ����
	public int count(Criteria cri);
	
	
}
