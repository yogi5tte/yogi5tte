package com.itbank.user;

import org.apache.ibatis.annotations.Select;

public interface UsercheckDAO {

	@Select("select * from total_user where email=#{gcuseremail}")
	User_nonsocialDTO checkId(String gcuseremail);

	@Select("select * from total_user where nickName=#{unick}")
	String checkNick(String unick);

}
