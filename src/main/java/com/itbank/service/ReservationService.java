package com.itbank.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.info.InfoDAO;
import com.itbank.info.InfoDTO;
import com.itbank.reservation.ReservationDAO;
import com.itbank.reservation.ReservationDTO;
import com.itbank.room.RoomDAO;
import com.itbank.room.RoomDTO;

@Service
public class ReservationService {

	@Autowired RoomDAO roomDAO;
	@Autowired InfoDAO infoDAO;
//	@Autowired ReservationDAO rsvnDAO;
	public RoomDTO checkRoom(HashMap<String, String> room_idx) {
		RoomDTO roomDto = roomDAO.checkRoom(room_idx);
		return roomDto;
	}
	public InfoDTO checkProduct(HashMap<String, String> room_idx) {
		InfoDTO infoDto = infoDAO.checkProduct(room_idx);
		return infoDto;
	}
//	public int insertReservation(ReservationDTO rsvnDto) {
//		
//		return rsvnDAO.inserReservation(rsvnDto);
//	}
	

}
