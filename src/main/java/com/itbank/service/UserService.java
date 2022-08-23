package com.itbank.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.itbank.user.User_nonsocialDAO;
import com.itbank.user.User_nonsocialDTO;
import com.itbank.user.User_sellerDAO;
import com.itbank.user.User_sellerDTO;


@Service
public class UserService {

	@Autowired
	private User_nonsocialDAO dao;
	
	@Autowired
	private User_sellerDAO sellerDAO;
	
	
	
	public User_nonsocialDTO login(User_nonsocialDTO dto) {
		System.out.println("dto:"+ dto.getEmail());
		System.out.println("dto:"+ dto.getPassword());
		return dao.login(dto) ;
	}

		
	public int join(User_nonsocialDTO dto) {
		String result = "";
		String newUserID = dto.getEmail();

		if(newUserID.contains("naver")) {
			
			newUserID += ".com";
			dto.setEmail(newUserID);
		}
		else if(newUserID.contains("nate")) {
			
			newUserID += ".com";
			dto.setEmail(newUserID);
		}
		else if(newUserID.contains("gmail")) {
			
			newUserID += ".com";
			dto.setEmail(newUserID);
		}
		else if(newUserID.contains("hanmail")) {
			
			newUserID += ".net";
			dto.setEmail(newUserID);
		}
		System.out.println("newUserID : " + newUserID);
		
		
		
		return dao.join(dto);
	}

	public User_sellerDTO seller_login(HashMap<String, String> dto) {
//		System.out.println("dto:"+ dto.getEmail());
//		System.out.println("dto:"+ dto.getPassword());
		return sellerDAO.login(dto);
	}	
		
		
	


	
	
	
	
}
