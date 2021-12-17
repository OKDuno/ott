package ott.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import ott.zerock.domain.MemberVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {

	@Autowired
	MemberMapper mapper;
	
	@Test
	public void testregister() throws Exception {
		MemberVO member = new MemberVO();
		member.setUserId("cc");
		member.setUserName("123");
		member.setUserPass("123");
		mapper.register(member);
		
	}
	
	@Test
	public void testIdChk() throws Exception {
		MemberVO member = new MemberVO();
		member.setUserId("ww");
		member.setUserName("123");
		member.setUserPass("123");
		mapper.passChk(member);
		log.info("..................."+mapper.passChk(member));
		//count가 0이면 없음 / 1이면 있음
	}
	
	//로그인
	@Test
	public void testLogin() {
		MemberVO member = new MemberVO();
		member.setUserId("cc");
		member.setUserPass("123");
		mapper.login(member);
		log.info("..................."+mapper.login(member));
	}
	
	
	@Test
	public void testMyMovie() {
		log.info(mapper.getList("aa"));
	}
	
	@Test
	public void testMyboard(){
		log.info(mapper.myReview("dla"));
	}
	
	
	
	
}
