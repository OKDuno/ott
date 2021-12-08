package ott.dla.mapper;

import java.util.List;

import ott.dla.domain.BoardVO;
import ott.dla.domain.Criteria;

public interface BoardMapper {
	
	//글목록보기
	public List<BoardVO> getList();
	//글 삽입
	public void insert(BoardVO board);
	//글 조회
	public BoardVO read(Long bno);
	//글 삭제
	public int delete(Long bno);
	//글 수정
	public int modify(BoardVO board);
	//글 목록 보기(페이지 단위)
	public List<BoardVO> getListWithPaging(Criteria cri);
	//글 개수
	public int count(Criteria cri);
	
	
}
