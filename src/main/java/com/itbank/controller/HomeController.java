package com.itbank.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.room.MotelDTO;
import com.itbank.service.RoomService;

import com.itbank.info.InfoDAO;
import com.itbank.info.InfoDTO;
import com.itbank.room.MotelDAO;
@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired private RoomService roomService;
	@Autowired private InfoDAO infoDAO;
	@Autowired private MotelDAO motelDAO;
	
	@GetMapping("main")
	public String main() {
		return "main";
	}

	@RequestMapping("main/detail")
	public void detail() {}
	
	@GetMapping("main/detail/{idx}")
	public ModelAndView detail(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView("main/detail");
		InfoDTO info = infoDAO.selectInfo(idx);
		List<MotelDTO> mtRoom = motelDAO.selectRoom(idx);
		mav.addObject("info", info);
		mav.addObject("room", mtRoom);
		return mav;
	}

	@RequestMapping("main/list")
	public void List() {}
	
}