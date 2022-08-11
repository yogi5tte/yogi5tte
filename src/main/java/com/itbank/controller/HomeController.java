package com.itbank.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.info.InfoDAO;
import com.itbank.info.InfoDTO;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired private InfoDAO infoDAO;
	
	@GetMapping("main")
	public String main() {
		return "main";
	}

	@GetMapping("main/detail")
	public void detaill() {}
	
	@GetMapping("main/detail/{idx}")
	public ModelAndView detail(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView("main/detail");
		InfoDTO dto = infoDAO.selectInfo(idx);
		
		mav.addObject("dto", dto);
		return mav;
	}

	@GetMapping("main/list")
	public void list() {}
	
//	@GetMapping("/list")
//	public List<MotelDTO> list() {
//		return roomService.showList();
//	}
	
	
	

	
	
	
}