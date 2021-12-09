package ott.dla.service;

import java.util.List;


import ott.dla.domain.BoardVO;
import ott.dla.domain.Criteria;

public interface BoardService {
	
	//글목록보기
	//public List<BoardVO> getList();
	//글삽입
	public void insert(BoardVO board);
	//글조회
	public BoardVO read(Long bno);
	//글삭제
	public boolean delete(Long bno);
	//글수정
	public boolean modify(BoardVO board);
	//글 목록보기(페이징 처리)
	public List<BoardVO> getList(Criteria cri);
	//글개수
	public int count(Criteria cri);
}
