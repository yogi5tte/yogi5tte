package com.itbank.user;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface UsercheckDAO {

	@Select("select * from total_user where email=#{gcuseremail}")
	User_nonsocialDTO checkId(String gcuseremail);

	@Select("select * from total_user where nickName=#{unick}")
	String checkNick(String unick);


	
	
	
	// 호스트 관련 함수
	@Select("select * from users_seller where email=#{gcuseremail}")
	Users_sellerDTO checkHostId(String gcuseremail);

	@Select("select * from users_seller where nickName=#{unick}")
	String checkHostNick(String unick);
	
	@Select("select * from users_seller where phonenumber=#{phonenumber}")
	String checkpNum(String pNum);

}
