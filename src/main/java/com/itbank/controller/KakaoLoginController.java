package com.itbank.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class KakaoLoginController {
		
	//수정해야할 파트부분
	@PostMapping("/login/{kakaoLogin}")	
		public String selectNick(@PathVariable("kakaoLogin") String unick) {
		System.out.println(unick);
		String result = userCheckService.checkNick(unick); 		
		System.out.println("result : " + result);
		if(result == null) {
			return "true";
		}
		else {
			return "false";
			}
		}

}
