package com.itbank.user;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface User_socialDAO {

	@Select("select * from total_user where email=#{email}")
	User_socialDTO checkid(String email);

	@Insert("insert into user_social (email, password, nickName) values (#{email},#{password},#{nickName})")
	int insertKakao(User_socialDTO dto);

}
