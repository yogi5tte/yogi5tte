package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.room.MotelDAO;
import com.itbank.room.MotelDTO;

@Service
public class RoomService {
	
	@Autowired private MotelDAO motelDAO;
	
	public List<MotelDTO> selectList(int idx) {
		List<MotelDTO> list = motelDAO.selectList(idx);
		
		return list;
	}

//	public List<MotelDTO> showList(HashMap<String, String> param) {
//		return motelDAO.showList(param);
//	}

}
