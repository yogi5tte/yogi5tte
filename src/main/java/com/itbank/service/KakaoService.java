package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.user.User_socialDAO;
import com.itbank.user.User_socialDTO;

@Service
public class KakaoService {

	@Autowired private User_socialDAO dao;
	
	
	public int kakaojoin(User_socialDTO dto) {
		System.out.println("===============kakaojoinService시작==============");
		System.out.println(dto.getEmail());
		System.out.println(dto.getPassword());
		System.out.println(dto.getNickName());
		return dao.insertKakao(dto);
	}

}
