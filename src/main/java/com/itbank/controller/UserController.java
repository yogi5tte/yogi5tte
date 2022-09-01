package com.itbank.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.reservation.ReservationDAO;
import com.itbank.service.KakaoService;
import com.itbank.reservation.ReservationDTO;
import com.itbank.reservation.RsvnApproveDTO;
import com.itbank.service.MailService;
import com.itbank.service.ReservationService;
import com.itbank.service.UserService;
import com.itbank.user.User_nonsocialDAO;
import com.itbank.user.User_nonsocialDTO;
import com.itbank.user.User_socialDTO;
import com.itbank.user.Users_sellerDTO;

@Controller
@RequestMapping("/user")
public class UserController {
   
   @Autowired private UserService userService;
   
   @Autowired MailService mailservice;
   
   @Autowired User_nonsocialDAO nonUserDAO;
   
   @Autowired ReservationDAO rsvnDAO;
   
   @Autowired ReservationService resService;
   
   @Autowired private KakaoService kakaoService;
 

   
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
   
   @GetMapping("/join3")
   public void join3() {
      
   }
   
   @PostMapping("/join3") // login
   public String join(User_nonsocialDTO dto) throws NoSuchAlgorithmException {
	  System.out.println("====================join3으로 접근했습니다!!======================");
      System.out.println(dto.getEmail());
      System.out.println(dto.getPassword());
      System.out.println(dto.getNickName());
      int row = userService.join(dto);
      System.out.println(row != 0 ? "가입 성공" : "가입 실패");
      return "redirect:"+ "/";
   }
   
   
   @GetMapping("/login")
   public void login() {}
   
   @PostMapping("/login")
   public String login(User_nonsocialDTO dto, HttpSession session, String url)throws NoSuchAlgorithmException {
//      System.out.println(dto.getEmail());
//      System.out.println(dto.getPassword());
      User_nonsocialDTO login  = userService.login(dto);
     
      if(login == null) {
         return "redirect:"+ "/user/relogin";
      }
      else {
      session.setAttribute("login", login);
      
   
   
      return "redirect:"+ "/";

      }
      
   }
   
   @GetMapping("/relogin")
   public void relogin() {}
	
   
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		 session.invalidate();
		return "redirect:"+ "/";
	}
	
	
	//예약내역 조회
	@GetMapping("/my_reservation/{idx}")
	public ModelAndView my_reservation(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView("/user/my_reservation");
		List<RsvnApproveDTO> approveDto = userService.selectRsvnList(idx);
		mav.addObject("approveDto",approveDto);
		//System.out.println(approveDto.get(0).getCheck_in());
		return mav;
	}
	
//	//마이 페이지 및 예약 내역
//	@RequestMapping("/my_reservation")
//	public List<MotelDTO> my_reservation() {
//		return userService.selectList();
//	}
	
	@RequestMapping("/my_reservation_detail")
	public void my_reservation_detail() {}
	
	@GetMapping("/mypage")
	public void mypage() {}
	
	@GetMapping("/joindrop")
	public void joindrop() {}
	
	@GetMapping("/host_join")
	public void host_join() {}
	
	@PostMapping("/host_join")
	@ResponseBody
	public String host_join(@RequestBody HashMap<String, String> dto, HttpSession session)throws NoSuchAlgorithmException {
		System.out.println(dto.get("email"));
		System.out.println(dto.get("password"));
		
		System.out.println(dto);
		Users_sellerDTO login  = userService.seller_login(dto);
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
	
	
	@GetMapping("/host_join2")
	public void host_join2() {}
	
	@PostMapping("/host_join2")
	public String join(Users_sellerDTO dto) throws NoSuchAlgorithmException {
		System.out.println(dto.getEmail());
		System.out.println(dto.getPassword());
		System.out.println(dto.getNickName());
		int row = userService.hostJoin(dto);
		System.out.println(row != 0 ? "가입 성공" : "가입 실패");
		return "redirect:"+ "/user/host_join";
	}
	
	
	@GetMapping("/host_home")
	public void host_home() {}
	
	
	@GetMapping("/host_home2")
	public void host_home2() {}
	
	@GetMapping("/kakaoJoin")
	   public String kakaoJoin(){
	     System.out.println("kakaoJoin접근성공");
	     
		 return "/user/kakaoJoin";
	   }
	
	@PostMapping("/kakaoJoin") // login
	   public String kakaoJoin(User_socialDTO dto) throws NoSuchAlgorithmException {
		  System.out.println("===============kakaojoinPost접근성공=======================");
	      System.out.println(dto.getEmail());
	      System.out.println(dto.getPassword());
	      System.out.println(dto.getNickName());
	    
	      int row = kakaoService.kakaojoin(dto);
	      System.out.println(row != 0 ? "가입 성공" : "가입 실패");
	      return "redirect:"+ "/";
	   }
	
	
   @PostMapping("/relogin")
   public String relogin(User_nonsocialDTO dto, HttpSession session)throws NoSuchAlgorithmException {
      System.out.println(dto.getEmail());
      System.out.println(dto.getPassword());
      User_nonsocialDTO login  = userService.login(dto);
      if(login == null) {
      
         return "redirect:"+ "/user/relogin";
      }
      else {
      session.setAttribute("login", login);
   
   
      return "redirect:"+ "/";
      }
      
   }
}
