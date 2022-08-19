package com.itbank.controller;




import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
public class PaymentController {
	
	@Autowired ReservationService rsvnService;
	//예약 관련 컨트롤러
//	@GetMapping("rsvn/reservation")
//	public void reservation() {//@PathVariable int idx
//	}
	
	 @GetMapping("rsvn/reservation") //idx = room_idx
	 public ModelAndView reservationReady(@RequestParam HashMap<String,String> param){
		  System.out.println(param);
		  ModelAndView mav = new ModelAndView("rsvn/reservation");
		  RoomDTO roomDto = rsvnService.checkRoom(param);
		  InfoDTO infoDto = rsvnService.checkProduct(param);
		  mav.addObject("roomDto",roomDto);
		  mav.addObject("infoDto",infoDto);
		  return mav;  
	  }
	 
	 @ResponseBody
	 @PostMapping("rsvn/reservation")
	 public int insertReservation(@RequestBody ReservationDTO rsvnDto){
		
		 return rsvnService.insertReservation(rsvnDto);
	 }
 
	 
	
	@GetMapping("rsvn/reservation_approve")
	public void reservation_apporve() {
	}
	//카카오페이 컨트롤러도 이곳에.
}
