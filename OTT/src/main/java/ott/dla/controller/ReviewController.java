package ott.dla.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import ott.dla.domain.Criteria;
import ott.dla.domain.PageDTO;
import ott.dla.domain.ReviewReplyVO;
import ott.dla.domain.ReviewVO;
import ott.dla.service.ReviewReplyService;
import ott.dla.service.ReviewService;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/review/*")
public class ReviewController {

	private ReviewService service;
	private ReviewReplyService reviewreplyService;
	
	//��Ϻ���
//	@RequestMapping("/title")
//	public void list(Model model) {
//		model.addAttribute("list",service.getList());
//	}
	
	//��Ϻ���(����¡)
	@RequestMapping("/title")
	public void list(Model model, Criteria cri) {
		log.info("list: " + cri);
		model.addAttribute("list",service.getList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri,service.count(cri)));

	}
	
	//�ۻ����ϱ�
	@RequestMapping("/insert") 
	//Ÿ��Ʋ���� ��Ϲ�ư�� ������  insert�� ����(�̰��� �ڹٽ�ũ��Ʈ�� title���� ó���Ѵ�.)
	//�׸��� insert.jsp���� �׼����� insert�� ������ ���� �ڵ� ó��
	public String insert(ReviewVO review, RedirectAttributes rttr) {
		service.insert(review);
		rttr.addFlashAttribute("result",review.getRev_bno());
		return "redirect:/review/title"; //ó�� �Ŀ� �ٽ� title�� ���ư���.
	}
	
	//�ۻ����ϴ� ȭ�� �����ֱ�
	@GetMapping("/insert")
	public void register() {
		
	}
	
	//�� �󼼺���
	@GetMapping("/read")
	public void read (@RequestParam("rev_bno")Long rev_bno, ReviewVO review, Model model,@ModelAttribute("cri") Criteria cri) {
		model.addAttribute("review",service.read(rev_bno));
		List<ReviewReplyVO> replyList = reviewreplyService.readReply(review.getRev_bno());
		model.addAttribute("replyList", replyList);
	}
	
	//�� �����ϱ� ȭ�� �����ֱ�
	@GetMapping("/modify") //get��û�� ���� // �� ȭ�鿡��
	public void modify(Long rev_bno, Model model, @ModelAttribute("cri") Criteria cri) {
		model.addAttribute("review",service.read(rev_bno));
	
		
	}
	
	//�� �����ϱ� ����
	@PostMapping("/modify") //post��û�� ���� //�����ϱ�
	public String modify(ReviewVO review, RedirectAttributes rttr, Criteria cri) {			
		rttr.addFlashAttribute("result", service.modify(review));
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());		
		return "redirect:/review/title";
	}
	
	//�� ����
	@PostMapping("/delete")
	public String remove(@RequestParam("rev_bno") Long rev_bno, RedirectAttributes rttr, Criteria cri) {
		rttr.addFlashAttribute("result", service.delete(rev_bno));
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());	
		return "redirect:/review/title";
	}
	
	//--------------------------------------------------------------------------
	
	//댓글 수정 GET
	@RequestMapping(value="/replyUpdateView", method = RequestMethod.GET)
	public String replyUpdateView(ReviewReplyVO vo, Criteria cri, Model model) throws Exception {
		log.info("reply Write");
		log.info("ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ");
		log.info("ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ"+vo);
		model.addAttribute("replyUpdate", reviewreplyService.selectReply(vo.getRev_rno()));
		model.addAttribute("cri", cri);
		
		return "review/replyUpdateView";
	}
	
	//댓글 수정 POST
	@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
	public String replyUpdate(ReviewReplyVO vo, Criteria cri, RedirectAttributes rttr) throws Exception {
		log.info("reply Write");
		log.info("ㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴ");
		log.info(vo);
		
		reviewreplyService.updateReply(vo);
		
		rttr.addAttribute("rev_bno", vo.getRev_bno());
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/review/read";
	}
	
		//댓글 삭제 GET
		@RequestMapping(value="/replyDeleteView", method = RequestMethod.GET)
		public String replyDeleteView(ReviewReplyVO vo, Criteria cri, Model model) throws Exception {
			log.info("reply Write");
			
			model.addAttribute("replyDelete", reviewreplyService.selectReply(vo.getRev_rno()));
			model.addAttribute("cri", cri);
			

			return "review/replyDeleteView";
		}
		
		//댓글 삭제
		@RequestMapping(value="/replyDelete", method = RequestMethod.POST)
		public String replyDelete(ReviewReplyVO vo, Criteria cri, RedirectAttributes rttr) throws Exception {
			log.info("reply Write");
			
			reviewreplyService.deleteReply(vo);
			
			rttr.addAttribute("rev_bno", vo.getRev_bno());
			rttr.addAttribute("pageNum", cri.getPageNum());
			rttr.addAttribute("amount", cri.getAmount());
			
			return "redirect:/review/read";
		}
	
	
}
