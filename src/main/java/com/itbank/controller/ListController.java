package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.room.MotelDTO;
import com.itbank.service.RoomService;

@RestController
public class ListController {

	@Autowired private RoomService roomService;
	
	@GetMapping("/listload/{category}/{pType}/{human_count}")
	public List<MotelDTO> list(@PathVariable int category, @PathVariable int pType, @PathVariable int human_count) {
		return roomService.selectList(category, pType, human_count);
	}
	
}