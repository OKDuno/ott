package ott.dla.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import lombok.extern.log4j.Log4j;
import ott.dla.domain.BoardVO;
import ott.dla.domain.Criteria;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMappertest {
	@Autowired
	BoardMapper mapper;
	
	@Test
	public void testgetList() {
		mapper.getList().forEach(temp -> log.info(temp));
	}
	
	
	@Test
    public void testModify() {
        
        BoardVO board = new BoardVO();
        board.setBno(228L);
        board.setTitle("bbbb");
        board.setTeg("자유");
        board.setContent("bbbb");
        board.setWriter("ㅛㅛㅛㅛㅛ");
        mapper.modify(board);
        log.info("result : " +board);
        
    }
	
	@Test
	public void testPaging() {
		Criteria cri = new Criteria();
		//10���� 3������
		cri.setPageNum(3);
		cri.setAmount(10);
		List<BoardVO> list = mapper.getListWithPaging(cri);
		list.forEach(board -> log.info(board.getBno()));
	}
	
	@Test
	public void testSearch() {
		Criteria cri = new Criteria();
			cri.setKeyword("공유");
			cri.setType("G");
			List<BoardVO> list = mapper.getListWithPaging(cri);
			list.forEach(board -> log.info(board));
		}
	
	
	
	
}
