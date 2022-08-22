package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.room.MotelDAO;
import com.itbank.room.MotelDTO;

@Service
public class RoomService {
	
	@Autowired private MotelDAO motelDAO;

	public List<MotelDTO> selectList(int category, int pType, int human_count) {
		return motelDAO.selectList(category, pType, human_count);
	}

}
