package com.itbank.service;

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
	
}
