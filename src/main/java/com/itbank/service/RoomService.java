package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.room.RoomDAO;
import com.itbank.room.RoomDTO;

@Service
public class RoomService {
	
	@Autowired private RoomDAO motelDAO;
	
	public List<RoomDTO> selectList() {
		return motelDAO.selectList();
	}

//	public List<MotelDTO> showList() {
//		return motelDAO.showList();
//	}
	
//	public List<MotelDTO> selectList(String target) {
//		return motelDAO.selectList(target);
//	}

//	public List<MotelDTO> selectList(MotelDTO dto) {
//		return motelDAO.selectList(dto);
//	}

}
