package com.itbank.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

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

import com.itbank.reservation.ReservationDAO;
import com.itbank.reservation.ReservationDTO;
import com.itbank.room.MotelDTO;
import com.itbank.service.MailService;
import com.itbank.service.UserService;
import com.itbank.user.User_nonsocialDAO;
import com.itbank.user.User_nonsocialDTO;
import com.itbank.user.User_sellerDTO;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired private UserService userService;
	
	@Autowired MailService mailservice;
	
	@Autowired User_nonsocialDAO nonUserDAO;
	
	@Autowired ReservationDAO resDAO;
	
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
	
	@PostMapping("/join3") // login
	public String join(User_nonsocialDTO dto) throws NoSuchAlgorithmException {
		int row = userService.join(dto);
		System.out.println(row != 0 ? "가입 성공" : "가입 실패");
		return "redirect:"+ "/";
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
	
	
	@GetMapping("/my_reservation")
	public ModelAndView my_reservation() {
		ModelAndView mav = new ModelAndView();
		List<ReservationDTO> list = resDAO.getReserList();
		mav.addObject("list", list);
		return mav;
	}
	
//	//마이 페이지 및 예약 내역
//	@RequestMapping("/my_reservation")
//	public List<MotelDTO> my_reservation() {
//		return userService.selectList();
//	}
	
	@RequestMapping("/my_reservation_detail")
	public ModelAndView my_reservation_detail() {
		ModelAndView mav = new ModelAndView();
		List<ReservationDTO> list = resDAO.getReserList();
		mav.addObject("list", list);
		return mav;
	}
	
	@GetMapping("/mypage")
	public void mypage() {}
	
	@RequestMapping("/joindrop")
	public void joindrop() {}
	
	@GetMapping("/host_join")
	public void host_join() {}
	
	@PostMapping("/host_join")
	@ResponseBody
	public String host_join(@RequestBody HashMap<String, String> dto, HttpSession session)throws NoSuchAlgorithmException {
		System.out.println(dto.get("email"));
		System.out.println(dto.get("password"));
		System.out.println(dto);
		User_sellerDTO login  = userService.seller_login(dto);
		if(login == null) {
			return "/user/host_join";
		}
		else {
			session.setAttribute("login", login);
			return "/user/host_home";
		}
	}
	
	
	@PostMapping(value="/host_send", produces="text/plain; charset=utf-8",consumes="text/plain; charset=utf-8")
	@ResponseBody
	public String host_send(@RequestBody String answer) throws IOException,MessagingException{
		String isOK = mailservice.sendConfirm(answer);
		return isOK;
	}
	
	
	@RequestMapping("/host_join2")
	public void host_join2() {}
	
	@RequestMapping("/host_join3")
	public void host_join3() {}
	
	@GetMapping("/host_home")
	public void host_home() {}
	
	
	@RequestMapping("/host_home2")
	public void host_home2() {}
	
	
}
