package com.itbank.user;

import org.apache.ibatis.annotations.Select;

public interface User_nonsocialDAO {
	
	@Select("select * from total_user where email=#{email} and password=#{password}")
	User_nonsocialDTO login(User_nonsocialDTO dto);

}