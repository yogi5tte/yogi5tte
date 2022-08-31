package com.itbank.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.service.User_socialService;
import com.itbank.user.User_socialDTO;

@RestController
@RequestMapping("/user")
public class KakaoLoginController {
		
	@Autowired
	private User_socialService service;
	
	//수정해야할 파트부분
	@PostMapping(value = "/kakaoLogin", produces="application/json; charset=utf-8")
	public int insertOne(@RequestBody User_socialDTO dto,HttpSession session) {
		System.out.println("==========여긴 카카오로그인컨트롤입니다!!===============");
		System.out.println("idx"+dto.getIdx());
		System.out.println("email"+dto.getEmail());
		System.out.println("password"+dto.getPassword());
		System.out.println("nickName"+dto.getNickName());
		System.out.println("type"+dto.getType());
		
		int check = service.checkid(dto, session); 
		
//		if(check == 1) {
//			System.out.println("check : "+check);
//			return "redirect:/";
//		}
//		if(check == 0) {
//			System.out.println(check);
//						
//			
//		}
//	}
		return check;
	

	}
	
	
	
	
}
