package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.room.RoomDTO;
import com.itbank.service.RoomService;

@RestController
public class ListController {

	@Autowired private RoomService roomService;
	
	@GetMapping("/listload")
	public List<RoomDTO> list() {
		return roomService.selectList();
	}
	
//	@GetMapping("/listload/{target}")
//	public List<MotelDTO> list(@PathVariable String target) {
//		System.out.println(target);
//		return roomService.selectList(target);
//	}
}