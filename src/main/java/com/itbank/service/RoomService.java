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
			if(list.get(i).getStar() >= 9.5) {
				list.get(i).setSeller_text("최고에요");
			}
			else if (list.get(i).getStar() >= 9.0) {
				list.get(i).setSeller_text("추천해요");
			}
			else {
				list.get(i).setSeller_text("만족해요");
			}
		}
		return list;
	}
	
}
