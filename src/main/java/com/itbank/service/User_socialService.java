package com.itbank.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.user.User_nonsocialDTO;
import com.itbank.user.User_socialDAO;
import com.itbank.user.User_socialDTO;

@Service
public class User_socialService {

	@Autowired
	private User_socialDAO dao;

	public int checkid(User_socialDTO dto, HttpSession session) {
		System.out.println("service dto.getIdx() : " + dto.getIdx());
		System.out.println("service dto.getEmail() : " + dto.getEmail());
		System.out.println("service dto.getNickName() : " + dto.getNickName());
		System.out.println("service dto.getPassword() : " + dto.getPassword());
		System.out.println("service dto.getType() " + dto.getType());
		System.out.println("service dto.getIdx() : " + dto.getIdx());
		
	
		int result=0;
		session.setAttribute("newLogin", dto);
		System.out.println("session : " + session.getAttribute("newLogin"));
		
		User_socialDTO login = dao.checkid(dto.getEmail());
		
		if(login == null) {
			System.out.println("checkEmail : null");
			
			result = 0;
			
		}
		
		else if(login.getEmail() != null) {
			session.setAttribute("login", login);
			result = 1;
		} 

		System.out.println("result : " + result);
		
		
		return result;
	}

}
