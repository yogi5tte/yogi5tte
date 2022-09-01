package com.itbank.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.itbank.user.User_nonsocialDAO;
import com.itbank.user.User_nonsocialDTO;
import com.itbank.user.User_sellerDAO;
import com.itbank.user.User_sellerDTO;
import com.itbank.user.User_socialDAO;
import com.itbank.user.User_socialDTO;


@Service
public class UserService {

	@Autowired
	private User_nonsocialDAO dao;
	

	
	@Autowired
	private User_sellerDAO sellerDAO;
	
	
	
	public User_nonsocialDTO login(User_nonsocialDTO dto) {
//		System.out.println("dto:"+ dto.getEmail());
//		System.out.println("dto:"+ dto.getPassword());
		return dao.login(dto) ;
	}

		
	public int join(User_nonsocialDTO dto) {
		String newUserID = dto.getEmail();
		String newUserPw = dto.getPassword();
		String newUserNick = dto.getNickName();
		

		System.out.println("newUserID : " + newUserID);
		System.out.println("newUserPw : " + newUserPw);
		System.out.println("newUsernick : " + newUserNick);
		
		
		return dao.join(dto);
	}

	public User_sellerDTO seller_login(HashMap<String, String> dto) {
//		System.out.println("dto:"+ dto.getEmail());
//		System.out.println("dto:"+ dto.getPassword());
		return sellerDAO.login(dto);
	}



		
		
	


	
	
	
	
}
