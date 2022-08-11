package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@PostMapping("/main")
	public List<MotelDTO> showList() {
		return roomService.showList();
	}

	@RequestMapping("main/detail")
	public void detail() {}

	@RequestMapping("main/list")
	public void List() {}
	
}