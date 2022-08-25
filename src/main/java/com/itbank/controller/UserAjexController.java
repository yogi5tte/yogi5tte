package com.itbank.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.service.UserCheckService;



@RestController
@RequestMapping("/user")
public class UserAjexController {



	@Autowired private UserCheckService userCheckService;


	@GetMapping("/join3/{gcuseremail}")
	public String selectList(@PathVariable("gcuseremail") String gcuseremail) {
				String result;
		
		
				System.out.println("gcuseremail : " + gcuseremail);
				System.out.println("gcuseremail.contains(@) :" +  gcuseremail.contains("@"));
				
				if(gcuseremail.contains("@") == false) {
					result = "-1";
					System.out.println(result);
					return "-1";
					
				}
				else if(gcuseremail.contains("naver") == true){
					//System.out.println("실행했니?");
					result = userCheckService.checkId(gcuseremail); 		
					//System.out.println("result : " + result);
					
					
					return result;	
					
				}
				else if(gcuseremail.contains("nate") == true){
					//System.out.println("실행했니?");
					result = userCheckService.checkId(gcuseremail); 		
					//System.out.println("result : " + result);
					
					
					return result;	
					
				}
				else if(gcuseremail.contains("gmail") == true){
					//System.out.println("실행했니?");
					result = userCheckService.checkId(gcuseremail); 		
					//System.out.println("result : " + result);
					
					
					return result;	
				}
				else if(gcuseremail.contains("hanmail") == true){
					//System.out.println("실행했니?");
					result = userCheckService.checkId(gcuseremail); 		
					//System.out.println("result : " + result);
					
					
					return result;	
					
				}
				else {
					result = "-1";
					//System.out.println(result);
					return "-1";	
				}
				
			
					
		
		}
	
	
	
	
	@PostMapping("/join3/{unick}")	
		public String selectNick(@PathVariable("unick") String unick) {
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





	@GetMapping("/host_join2/{gcuseremail}")
	public String selectMail(@PathVariable("gcuseremail") String gcuseremail) {
		String result;
		
		
		System.out.println("gcuseremail : " + gcuseremail);
		System.out.println("gcuseremail.contains(@) :" +  gcuseremail.contains("@"));
		
		if(gcuseremail.contains("@") == false) {
			result = "-1";
			System.out.println(result);
			return "-1";
			
		}
		else if(gcuseremail.contains("naver") == true){
			System.out.println("실행했니?");
			result = userCheckService.checkId(gcuseremail); 		
			System.out.println("result : " + result);
			
			
			return result;	
			
		}
		else if(gcuseremail.contains("nate") == true){
			System.out.println("실행했니?");
			result = userCheckService.checkId(gcuseremail); 		
			System.out.println("result : " + result);
			
			
			return result;	
			
		}
		else if(gcuseremail.contains("gmail") == true){
			System.out.println("실행했니?");
			result = userCheckService.checkId(gcuseremail); 		
			System.out.println("result : " + result);
			
			
			return result;	
		}
		else if(gcuseremail.contains("hanmail") == true){
			System.out.println("실행했니?");
			result = userCheckService.checkId(gcuseremail); 		
			System.out.println("result : " + result);
			
			
			return result;	
			
		}
		else {
			result = "-1";
			System.out.println(result);
			return "-1";	
		}
	}
	
	
	
	
	@PostMapping("/host_join2/{unick}")	
	public String selectUnick(@PathVariable("unick") String unick) {
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
	
	
	
	@PostMapping("/host_join2/{pNum}")	
	public String selectpNum(@PathVariable("pNum") String pNum) {
	System.out.println(pNum);
	String result = userCheckService.checkpNum(pNum);
	System.out.println("result : " + result);
	if(result == null) {
		return "true";
	}
	else {
		return "false";
		}
	}


}