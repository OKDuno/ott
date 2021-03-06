package ott.zerock.controller;


import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import ott.zerock.domain.Criteria;
import ott.zerock.domain.ReplyVO;
import ott.zerock.service.ReplyService;


/*@RequestMapping("/board/")*/
@Controller
@AllArgsConstructor
@Log4j
public class ReplyController {

	private ReplyService service;
	
	//λκΈ μμ±
	@RequestMapping(value="/replyWrite", method = RequestMethod.POST)
	public String replyWrite(ReplyVO vo, Criteria cri, RedirectAttributes rttr) throws Exception {
		log.info("reply Write");
		
		service.writeReply(vo);
		
		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/board/read";
	}
	
	
	
	
	
}
