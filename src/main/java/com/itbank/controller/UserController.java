package com.itbank.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itbank.service.MailService;
import com.itbank.service.UserService;
import com.itbank.user.User_nonsocialDTO;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired private UserService userService;
	
	@Autowired MailService mailservice;
	
	
	@RequestMapping("/join")
	public void join() {
	}

	@GetMapping("/join2")
	public String join2() {
		return "/user/join2";
	}

	@PostMapping(value="/join2", produces="text/plain; charset=utf-8",consumes="text/plain; charset=utf-8")
	@ResponseBody
	public String join2(@RequestBody String answer) throws IOException,MessagingException{
		String isOK = mailservice.sendConfirm(answer);
		return isOK;
	}
	
	@RequestMapping("/join3")
	public void join3() {
		
	}
	
	
	
	@GetMapping("/login")
	public void login() {}
	
	@PostMapping("/login")
	public String login(User_nonsocialDTO dto, HttpSession session)throws NoSuchAlgorithmException {
		System.out.println(dto.getEmail());
		System.out.println(dto.getPassword());
		User_nonsocialDTO login  = userService.login(dto);
		if(login == null) {
		
			return "redirect:"+ "/relogin";
		}
		else {
		session.setAttribute("login", login);
	
	
		return "redirect:"+ "/";
		}
		
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		 session.invalidate();
		return "redirect:"+ "/";
	}
	
	
	//마이 페이지 및 예약 내역
	@RequestMapping("/my_reservation")
	public void my_reservation() {
		
	}
	
	@RequestMapping("/my_reservation_detail")
	public void my_reservation_detail() {
	}
	
	@RequestMapping("/mypage")
	public void mypage() {
		
	}
	
	@RequestMapping("/joindrop")
	public void joindrop() {
		
	}
	
	@RequestMapping("/joindrop2")
	public void joindrop2() {
		
	}
}
