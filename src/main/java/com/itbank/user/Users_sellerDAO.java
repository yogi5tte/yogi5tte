package com.itbank.user;

import java.util.HashMap;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface Users_sellerDAO {

	@Select("select * from users_seller where email=#{email} and password=#{password}")
	Users_sellerDTO login(HashMap<String, String> dto);

	@Insert("insert into users_seller (email, password, name, phoneNumber, nickName) values (#{email},#{password}, #{name}, #{phoneNumber}, #{nickName})")
	int join(Users_sellerDTO dto);
	
}
