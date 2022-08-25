package com.itbank.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.room.RoomDTO;
import com.itbank.service.RoomService;

@RestController
public class ListController {

	@Autowired private RoomService roomService;
	
	@GetMapping("/listload/{category}/{pType}/{human_count}")
	public List<RoomDTO> list(@PathVariable int category,
							   @PathVariable int pType,
							   @PathVariable int human_count) {
		
		return roomService.selectList(category, pType, human_count);
	}
	
	@PostMapping(value="/main/listload", produces="application/json; charset=utf-8")
	public List<RoomDTO> list(@RequestBody HashMap<String, Object> param) {
		return roomService.themeList(param);
	}
	
}