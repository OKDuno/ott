package ott.dla.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import lombok.extern.log4j.Log4j;
import ott.dla.domain.BoardVO;
import ott.dla.domain.Criteria;
import ott.dla.domain.ReplyVO;
import ott.dla.domain.ReviewReplyVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {

	@Autowired //�ʵ�����
	BoardService service;
	
	@Test
	public void aaa() {
		ReplyVO vo = new ReplyVO();
		log.info("=============================="+vo.getBno());
	}
	
	
	
//	@Test
//	public void getTest() {
//		log.info("�� �󼼺��� Ȯ��"+service.getList());
//	}
	
	@Test
	public void getTest() {
		service.getList(new Criteria(2,10)).forEach(board -> log.info(board));
	}
	
	
	@Test
	public void removeTest() {
		service.delete(206L);
	}
	
	@Test
	public void modifyTest() {
		BoardVO board = new BoardVO();
		board.setBno(228L);
		board.setTitle("asd");
		board.setContent("asd");
		board.setWriter("asd");
		board.setTeg("asd");
		
		service.modify(board);
	}
	
}
