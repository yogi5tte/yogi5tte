package com.itbank.user;

import java.util.HashMap;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface User_sellerDAO {

	@Select("select * from users_seller where email=#{email} and password=#{password}")
	User_sellerDTO login(HashMap<String, String> dto);

	@Insert("insert into user_seller (email, password, nickName) values (#{email},#{password},#{nickName})")
	int join(User_sellerDTO dto);
	
}
