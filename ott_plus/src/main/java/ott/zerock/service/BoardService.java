package ott.zerock.service;

import java.util.List;

import ott.zerock.domain.BoardVO;
import ott.zerock.domain.Criteria;



public interface BoardService {
	
	//�۸�Ϻ���
	//public List<BoardVO> getList();
	//�ۻ���
	public void insert(BoardVO board);
	//����ȸ
	public BoardVO read(Long bno);
	//�ۻ���
	public boolean delete(Long bno);
	//�ۼ���
	public boolean modify(BoardVO board);
	//�� ��Ϻ���(����¡ ó��)
	public List<BoardVO> getList(Criteria cri);
	//�۰���
	public int count(Criteria cri);
}
