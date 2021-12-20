package ott.zerock.mapper;

import java.util.List;

import ott.zerock.domain.BoardVO;
import ott.zerock.domain.Criteria;



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
	//페이징
	public List<BoardVO> getListWithPaging(Criteria cri);
	//�� ����
	public int count(Criteria cri);
	
	
}
