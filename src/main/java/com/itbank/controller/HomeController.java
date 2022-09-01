package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.itbank.info.InfoDAO;
import com.itbank.info.InfoDTO;

import com.itbank.review.ReviewDTO;
import com.itbank.review.ReviewDAO;
import com.itbank.room.RoomDAO;
import com.itbank.room.RoomDTO;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired private InfoDAO infoDAO;
	@Autowired private RoomDAO roomDAO;
	@Autowired private ReviewDAO reviewDAO;
	
	@GetMapping("main")
	public String main() {
		return "main";
	}
	
	@GetMapping("main/detail/{idx}")
	public ModelAndView detail(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView("main/detail");
		
		InfoDTO info = infoDAO.selectInfo(idx);
		List<RoomDTO> mtRoom = roomDAO.selectRoom(idx);
		mav.addObject("info", info);
		mav.addObject("room", mtRoom);
		return mav;
	}
		
	@ResponseBody
	@GetMapping("main/detail/{idx}/{offset}")
	public List<ReviewDTO> reviewList(@PathVariable int idx, @PathVariable int offset){
		List<ReviewDTO> list = reviewDAO.reviewList(idx, offset);
		return list;
	}
	
	@GetMapping("main/list")
	public void list() {}
	
}