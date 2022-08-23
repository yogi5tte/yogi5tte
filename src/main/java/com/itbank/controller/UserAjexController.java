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
				
				System.out.println("gcuseremail : " + gcuseremail);
			
				String newUserID = gcuseremail;
				
				String result = userCheckService.checkId(newUserID); 		
						
				return result;
					
		
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

	
	
	
	
}
