package ott.zerock.controller;

import java.util.regex.Pattern;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;
import ott.zerock.domain.MemberVO;
import ott.zerock.service.MemberService;



@Log4j
@Controller
@RequestMapping("/member/*")
public class MemberController {

	
	@Autowired
	private MemberService memberservice;

	
	// 회원가입 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		log.info("get register");
	}
	
	// 회원가입 입력 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		int result = memberservice.idChk(vo);
		log.info(".............................."+result);
		try {
			if(result == 1) {
				//아이디는 1개가 유일하기 때문에
				//idChk 쿼리문에 의해서 Count가 1이면 회원가입 못함.
				return "/member/register";
			}else if(result == 0) {
				// 가입한 아이디가 없으면 
				String inputPass = vo.getUserPass();
				// inpustPass 변수에 비밀번호 저장
				vo.setUserPass(inputPass);
				memberservice.register(vo);
				// register 서비스 쿼리 실행.
			}

		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/";
		//회원가입 완료시 홈으로.
	}


	
	// 로그인 폼(화면)으로 이동 get
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void login() throws Exception{
		log.info("get login");
	}
	
	// 로그인 post
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		log.info("post login");
		log.info(".............................."+vo);
		HttpSession session = req.getSession();
		MemberVO login = memberservice.login(vo);
		log.info(".............................."+session);
		log.info(".............................."+login);
		
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("member", login);
		}
		
		return "redirect:/";
	}
	
	
	
	// 로그아웃 get
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		//저장된 세션정보들을 모두 무효화 시킴
		//즉, 세션을 끊어서 로그아웃하는것.
		return "redirect:/";
		//홈으로.
	}
	
	// 마이페이지 폼으로 이동 get
	@RequestMapping(value="/myPageView", method = RequestMethod.GET)
	public void myPageView() throws Exception{
		log.info("마이페이지");
	}	
	
	// 회원정보 수정 get
	@RequestMapping(value="/memberUpdateView", method = RequestMethod.GET)
	public String registerUpdateView() throws Exception{
		return "member/memberUpdateView";
	}
	
	// 회원정보 수정  post
	@RequestMapping(value="/memberUpdate", method = RequestMethod.POST)
	public String registerUpdate(MemberVO vo, HttpSession session) throws Exception{
		memberservice.memberUpdate(vo);
		//회원정보 수정 service 실행
		session.invalidate();
		//세션을 무효화 함으로써 로그인 끊음 (다시 세션에 저장하려고)
		return "redirect:/";
	}
	
	// 회원 탈퇴 폼으로 이동 get
	@RequestMapping(value="/memberDeleteView", method = RequestMethod.GET)
	public String memberDeleteView() throws Exception{
		return "member/memberDeleteView";
	}
	
	// 회원 탈퇴 post
	@RequestMapping(value="/memberDelete", method = RequestMethod.POST)
	public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		memberservice.memberDelete(vo);
		//회원탈퇴 service 실행
		session.invalidate(); 
		//세션을 무효화 함으로써 로그인 끊음 (다시 세션에 저장하려고)
		return "redirect:/";
	}	
	
	// 패스워드 체크
	@ResponseBody
	@RequestMapping(value="/passChk", method = RequestMethod.POST)
	public boolean passChk(MemberVO vo) throws Exception {
		MemberVO login = memberservice.login(vo);
		boolean pwdChk = Pattern.matches(vo.getUserPass(), login.getUserPass());
		/* boolean pwdChk;
		if(vo.getUserPass().equals(login.getUserPass())) {
			pwdChk = true;
		}else {
			pwdChk = false;
		}
		log.info("입력 비밀번호......."+vo.getUserPass());
		log.info("비밀번호......."+login.getUserPass()); */
		log.info("체크......."+pwdChk);
		return pwdChk;
		
		// 틀리거나 맞는지 boolean값으로 저장된 비밀번호  값을 반환해서 판별시킴 
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value="/idChk", method = RequestMethod.POST)
	public int idChk(MemberVO vo) throws Exception {
		int result = memberservice.idChk(vo);
		return result;
		//입력한 아이디를 반환하여 중복여부를 체크한다.
	}
	
	// 게시판 글 목록 조회
	@GetMapping("/myReview")
	public String myReview(@RequestParam("userId")String userId, HttpSession session, Model model) throws Exception{
		log.info("내가 쓴 게시글");
		model.addAttribute("myReivew", memberservice.myReview(userId));
		//service.list()에 담긴 데이터를 "list"라는 이름으로 담을것이다	
		return "member/myReview";
	}
	
	//영화 목록 화면 이동 및 보여주기
	@RequestMapping("/myMovie")
	public String getList(@RequestParam("userId")String userId, HttpSession session, Model model) throws Exception{
		log.info("내가 등록한 영화");
		model.addAttribute("member", memberservice.getList(userId));
		session.getAttribute("member");
		log.info("..............."+memberservice.getList(userId));
		return "member/myMovie";
		
	}
	
	
	
}
