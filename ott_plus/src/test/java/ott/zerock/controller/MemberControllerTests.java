package ott.zerock.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration //�߰�
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class MemberControllerTests {

	
	@Setter(onMethod_= {@Autowired})
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		mockMvc=MockMvcBuilders.webAppContextSetup(ctx).build();
	}

	//로그인
	@Test
	public void testLogin() throws Exception {
		log.info(mockMvc.perform(MockMvcRequestBuilders.post("/member/login")
				.param("userId", "cc")
				.param("userPass", "123"))
				.andReturn().getModelAndView().getViewName());
	}
	
	//회원가입
	@Test
	public void testRegister() throws Exception {
		log.info(mockMvc.perform(MockMvcRequestBuilders.post("/member/register")
				.param("userId", "ㅛㅛ")
				.param("userPass", "123")
				.param("userName", "123"))
				.andReturn().getModelAndView().getViewName());
	}
	
	//글 쓴 목록
	@Test
	public void testMyReview() throws Exception {
		log.info(
				mockMvc.perform(MockMvcRequestBuilders.get("/member/myReview")
				.param("userId", "cc"))
				.andReturn().getModelAndView().getModelMap());
	}
	
	//등록한 영화
	@Test
	public void testMyMovie() throws Exception {
		log.info("==============="+
				mockMvc.perform(MockMvcRequestBuilders.get("/member/myMovie")
				.param("userId", "aa"))
				.andReturn().getModelAndView().getModelMap());
	
	}
	
	
	@Test
	public void testListPageing() throws Exception {
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/member/myReview")
				.param("pageNum", "1")
				.param("amount", "10"))
				.andReturn().getModelAndView().getModelMap());
		
	}
	
	
}
