package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.room.MotelDTO;
import com.itbank.service.RoomService;

@RestController
public class ListController {

	@Autowired private RoomService roomService;
	
	@GetMapping("/listload/{idx}")
	public List<MotelDTO> list(int idx) {
		return roomService.selectList(idx);
	}
	
//	@GetMapping("/main/list")
//	public List<MotelDTO> mainList() {
//		return roomService.showList();
//	}
}