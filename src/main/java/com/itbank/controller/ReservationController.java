package com.itbank.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.info.InfoDTO;
import com.itbank.reservation.ReservationDTO;

import com.itbank.room.RoomDTO;
import com.itbank.service.ReservationService;

@Controller
@RequestMapping("/")
public class ReservationController {

	 @Autowired private ReservationService rsvnService;
	
	 @GetMapping("rsvn/reservation") //idx = room_idx
	 public ModelAndView reservationReady(@RequestParam HashMap<String,String> param){
		  System.out.println(param);
		  ModelAndView mav = new ModelAndView("rsvn/reservation");
		  RoomDTO roomDto = rsvnService.checkRoom(param);
		  InfoDTO infoDto = rsvnService.checkProduct(param);
//		  ReservationDTO rsvnDto = rsvnService.checkReservation(param);
		  mav.addObject("roomDto",roomDto);
		  mav.addObject("infoDto",infoDto);
//		  mav.addObject("rsvnDto",rsvnDto);
		  return mav;  
	  }
	 
	 
	 //결제 페이지로 데이터를 넘기기 위해 DB에 예약 데이터를 추가
	 @ResponseBody
	 @PostMapping("rsvn/reservation")
	 public int insertReservation(@RequestBody ReservationDTO rsvnDto){
		 return rsvnService.insertReservation(rsvnDto);
	 }
	 //결제 페이지에서 데이터를 받아서 결제 요청
	 @PostMapping("rsvn/getrsvndto")
	 @ResponseBody
	 public ReservationDTO getrsvndto(@RequestBody HashMap<String, Object> param) {
		 ReservationDTO dto = rsvnService.getRsvnDTO(param);
		 return dto;
	 }
	
	 
	 @GetMapping("rsvn/reservation_approve/{idx}")
	 public ModelAndView reservation_approve(@PathVariable int idx) {
		 ModelAndView mav = new ModelAndView("rsvn/reservation_approve");
		 ReservationDTO rsvnDto = rsvnService.checkReservation(idx);
		 mav.addObject("rsvnDto",rsvnDto);
		 return mav;
	 }
}
