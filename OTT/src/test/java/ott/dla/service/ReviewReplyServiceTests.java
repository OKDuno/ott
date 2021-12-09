package ott.dla.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import ott.dla.domain.ReviewReplyVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReviewReplyServiceTests {

	@Autowired //�ʵ�����
	ReviewReplyService service;
	
	@Test
	public void selectReply() {
		ReviewReplyVO review = new ReviewReplyVO();
		service.selectReply(8L);
		
	}
	
	@Test
	public void aaa() {
		ReviewReplyVO vo = new ReviewReplyVO();
		log.info("=============================="+vo.getRev_bno());
	}
}
