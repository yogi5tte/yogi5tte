package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.room.RoomDAO;
import com.itbank.room.RoomDTO;


@Service
public class RoomService {
	
	@Autowired private RoomDAO roomDAO;
	
	public List<RoomDTO> selectList(int category, int pType, int human_count) {
		return roomDAO.selectList(category, pType, human_count);
	}
	
	public List<RoomDTO> themeList(HashMap<String, Object> param) {
		return roomDAO.themeList(param);
	}

	public List<RoomDTO> review(int idx) {
		List<RoomDTO> list = roomDAO.review(idx);
		for(int i = 0; i < list.size(); i++) {
//			System.out.println(list.get(i).getReview_count());
//			System.out.println(list.get(i).getStar());
		}
		return list;
	}
	
}
