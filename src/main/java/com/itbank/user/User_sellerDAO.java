package com.itbank.user;

import java.util.HashMap;

import org.apache.ibatis.annotations.Select;

public interface User_sellerDAO {

	@Select("select * from users_seller where email=#{email} and password=#{password}")
	User_sellerDTO login(HashMap<String, String> dto);

}
