package com.itbank.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class PaymentController {
	
	//예약 관련 컨트롤러
	@GetMapping("rsvn/reservation")
	public void reservation() {//@PathVariable int idx
	}
	@GetMapping("rsvn/reservation_approve")
	public void reservation_apporve() {
	}
	//카카오페이 컨트롤러도 이곳에.
}
