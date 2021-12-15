package ott.zerock.controller;

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
import ott.zerock.domain.BoardVO;
import ott.zerock.domain.Criteria;
import ott.zerock.domain.PageDTO;
import ott.zerock.domain.ReplyVO;
import ott.zerock.service.BoardService;
import ott.zerock.service.ReplyService;


@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/board/*")
public class BoardController {
	
	private BoardService service;
	private ReplyService replyService;
	
	
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
	public String insert(BoardVO board, RedirectAttributes rttr) {
		service.insert(board);
		rttr.addFlashAttribute("result",board.getBno());
		return "redirect:/board/title"; //ó�� �Ŀ� �ٽ� title�� ���ư���.
	}
	
	//�ۻ����ϴ� ȭ�� �����ֱ�
	@GetMapping("/insert")
	public void register() {
		
	}
	
	//�� �󼼺���
	@GetMapping("/read")
	public void read (@RequestParam("bno")Long bno, BoardVO board, Model model,@ModelAttribute("cri") Criteria cri) {
		model.addAttribute("board",service.read(bno));
		List<ReplyVO> replyList = replyService.readReply(board.getBno());
		model.addAttribute("replyList", replyList);
	}
	
	//�� �����ϱ� ȭ�� �����ֱ�
	@GetMapping("/modify") //get��û�� ���� // �� ȭ�鿡��
	public void modify(Long bno, Model model, @ModelAttribute("cri") Criteria cri) {
		model.addAttribute("board",service.read(bno));
	
		
	}
	
	//�� �����ϱ� ����
	@PostMapping("/modify") //post��û�� ���� //�����ϱ�
	public String modify(BoardVO board, RedirectAttributes rttr, Criteria cri) {			
		rttr.addFlashAttribute("result", service.modify(board));
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());		
		return "redirect:/board/title";
	}
	
	//�� ����
	@PostMapping("/delete")
	public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr, Criteria cri) {
		rttr.addFlashAttribute("result", service.delete(bno));
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());	
		return "redirect:/board/title";
	}
	
	//--------------------------------------------------------------------------
	
	//댓글 수정 GET
	@RequestMapping(value="/replyUpdateView", method = RequestMethod.GET)
	public String replyUpdateView(ReplyVO vo, Criteria cri, Model model) throws Exception {
		log.info("reply Write");
		
		model.addAttribute("replyUpdate", replyService.selectReply(vo.getRno()));
		model.addAttribute("cri", cri);
		
		return "board/replyUpdateView";
	}
	
	//댓글 수정 POST
	@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
	public String replyUpdate(ReplyVO vo, Criteria cri, RedirectAttributes rttr) throws Exception {
		log.info("reply Write");
		
		replyService.updateReply(vo);
		
		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/board/read";
	}
	
		//댓글 삭제 GET
		@RequestMapping(value="/replyDeleteView", method = RequestMethod.GET)
		public String replyDeleteView(ReplyVO vo, Criteria cri, Model model) throws Exception {
			log.info("reply Write");
			
			model.addAttribute("replyDelete", replyService.selectReply(vo.getRno()));
			model.addAttribute("cri", cri);
			

			return "board/replyDeleteView";
		}
		
		//댓글 삭제
		@RequestMapping(value="/replyDelete", method = RequestMethod.POST)
		public String replyDelete(ReplyVO vo, Criteria cri, RedirectAttributes rttr) throws Exception {
			log.info("reply Write");
			
			replyService.deleteReply(vo);
			
			rttr.addAttribute("bno", vo.getBno());
			rttr.addAttribute("pageNum", cri.getPageNum());
			rttr.addAttribute("amount", cri.getAmount());
			
			return "redirect:/board/read";
		}
	
	
}
