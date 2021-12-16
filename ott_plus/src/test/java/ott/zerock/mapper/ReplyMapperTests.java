package ott.zerock.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import ott.zerock.domain.Criteria;
import ott.zerock.domain.ReplyVO;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTests {

	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	
	@Test
	public void testMapper() {
		log.info(mapper);
	}
	
	/*
	 * @Test public void testCreate() { ReplyVO vo = new ReplyVO(); vo.setBno(228L);
	 * vo.setReply("테스트"); vo.setReplyer("ddd"); mapper.insert(vo); }
	 * 
	 * @Test public void testRead() { Long targetRno = 4L; ReplyVO vo =
	 * mapper.read(targetRno); log.info(vo); }
	 * 
	 * @Test public void testDelete() { Long targetRno= 4L;
	 * mapper.delete(targetRno); }
	 * 
	 * 
	 * @Test public void testUpdate() { Long targetRno= 4L; ReplyVO vo =
	 * mapper.read(targetRno); vo.setReply("수정"); int count = mapper.update(vo);
	 * log.info(count);
	 * 
	 * }
	 */
	
	@Test
	public void testgetList() {
		Criteria cri = new Criteria();
		List<ReplyVO> replies = mapper.getListWithPaging(cri, 209L);
		replies.forEach(reply -> log.info(reply));
		
		
	}
	
	@Test
	public void testList2() {
		Criteria cri = new Criteria(2, 10);
		List<ReplyVO> replies = mapper.getListWithPaging(cri, 231L);
		replies.forEach(reply -> log.info(reply));
	}
	
	@Test
	public void aa() {
		System.out.println("xptmxm");
	}
	
	
}
