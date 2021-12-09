package ott.dla.controller;


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
import ott.dla.domain.Criteria;
import ott.dla.domain.ReplyPageDTO;
import ott.dla.domain.ReplyVO;
import ott.dla.service.ReplyService;

/*@RequestMapping("/board/")*/
@Controller
@AllArgsConstructor
@Log4j
public class ReplyController {

	private ReplyService service;
	
	//댓글 작성
	@RequestMapping(value="/replyWrite", method = RequestMethod.POST)
	public String replyWrite(ReplyVO vo, Criteria cri, RedirectAttributes rttr) throws Exception {
		log.info("reply Write");
		
		service.writeReply(vo);
		
		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/board/read";
	}
	
	//댓글 페이징
	@GetMapping(value = "/pages/{bno}/{page}",
			produces = {MediaType.APPLICATION_XML_VALUE,
						MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReplyPageDTO> getList(@PathVariable("page") int page,
			@PathVariable("bno") Long bno){
		Criteria cri = new Criteria(page,10);
		log.info("get Reply List bno: "+bno);
		log.info("cri:" + cri);;
		
		return new ResponseEntity<>(service.getListPage(cri, bno),HttpStatus.OK);
	}
	
	
	
	
}
