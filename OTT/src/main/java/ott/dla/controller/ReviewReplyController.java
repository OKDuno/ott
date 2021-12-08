package ott.dla.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import ott.dla.domain.Criteria;
import ott.dla.domain.ReviewReplyVO;
import ott.dla.service.ReviewReplyService;


@Controller
@AllArgsConstructor
@Log4j
public class ReviewReplyController {

private ReviewReplyService reviewreplyService;
	
	//댓글 작성
	@RequestMapping(value="/reviewreplyWrite", method = RequestMethod.POST)
	public String replyWrite(ReviewReplyVO vo, Criteria cri, RedirectAttributes rttr) throws Exception {
		log.info("reply Write");
		
		reviewreplyService.writeReply(vo);
		
		rttr.addAttribute("rev_bno", vo.getRev_bno());
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/review/read";
	}
	
}
