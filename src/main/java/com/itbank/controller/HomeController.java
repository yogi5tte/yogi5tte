package com.itbank.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.room.MotelDTO;
import com.itbank.service.RoomService;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired private RoomService roomService;
	
	@GetMapping("main")
	public String main() {
		return "main";
	}
//	@PostMapping("/main")
//	public ModelAndView showList(@RequestParam HashMap<String, String> param) {
//		System.out.println(param.get("cat"));
//		System.out.println(param.get("loc"));
//		System.out.println(param.get("peo"));
//		
//		ModelAndView mav = new ModelAndView("list");
//		List<MotelDTO> list = roomService.showList(param);
//		mav.addObject("list", list);
//		return mav;
//	}

	@RequestMapping("main/detail")
	public void detail() {}

	@RequestMapping("main/list")
	public void List() {}
	
}