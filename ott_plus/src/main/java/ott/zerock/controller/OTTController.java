package ott.zerock.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ott.zerock.domain.MovieVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import ott.zerock.service.ScrappingService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/ott/*")
@AllArgsConstructor
public class OTTController {
	private ScrappingService s_service;
	
	@RequestMapping("main")
	public void main(Model model) throws Exception {
		
		model.addAttribute("recomlist", s_service.recommend());
	}

	@RequestMapping("netflix_list")
	public void netflix_list(Model model) {
		log.info("netflix_list...");
		model.addAttribute("nmlist", s_service.getNmList());
		model.addAttribute("ntlist", s_service.getNtList());
	}
	
	@RequestMapping("disney_list")
	public void disney_list(Model model) {
		log.info("disney_list...");
		model.addAttribute("dmlist", s_service.getDmList());
		model.addAttribute("dtlist", s_service.getDtList());
	}
	
	@RequestMapping("hbo_list")
	public void hbo_list(Model model) {
		log.info("hbo_list...");
		model.addAttribute("hmlist", s_service.getHmList());
		model.addAttribute("htlist", s_service.getHtList());
	}
	
	@RequestMapping("amazon_list")
	public void amazon_list(Model model) {
		log.info("amazon_list...");
		model.addAttribute("amlist", s_service.getAmList());
		model.addAttribute("atlist", s_service.getAtList());
	}

}
