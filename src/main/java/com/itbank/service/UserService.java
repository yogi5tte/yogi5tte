package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.reservation.ReservationDTO;
import com.itbank.reservation.RsvnApproveDTO;
import com.itbank.user.User_nonsocialDAO;
import com.itbank.user.User_nonsocialDTO;
import com.itbank.user.User_socialDAO;
import com.itbank.user.User_socialDTO;
import com.itbank.user.Users_sellerDAO;
import com.itbank.user.Users_sellerDTO;



@Service
public class UserService {

	@Autowired private User_nonsocialDAO dao;
	
	@Autowired private Users_sellerDAO sellerDAO;
	
	public User_nonsocialDTO login(User_nonsocialDTO dto) {
//		System.out.println("dto:"+ dto.getEmail());
//		System.out.println("dto:"+ dto.getPassword());
		return dao.login(dto) ;
	}
	public User_socialDTO socialLogin(User_socialDTO dto) {
		return dao.kakologin(dto) ;
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

	public Users_sellerDTO seller_login(HashMap<String, String> dto) {
		return sellerDAO.login(dto);
	}





	public int hostJoin(Users_sellerDTO dto) {
		
		return sellerDAO.join(dto);

	}


	public List<RsvnApproveDTO> selectRsvnList(int idx) {
		return dao.selectRsvnList(idx);
	}	

		
		
	


	
	
	
	
}
