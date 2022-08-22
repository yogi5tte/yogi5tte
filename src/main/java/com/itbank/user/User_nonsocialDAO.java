package com.itbank.user;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itbank.room.MotelDTO;

public interface User_nonsocialDAO {
	
	@Select("select * from total_user where email=#{email} and password=#{password}")
	User_nonsocialDTO login(User_nonsocialDTO dto);

	@Insert("insert into user_nonsocial (email, password, nickName) values (#{email},#{password},#{nickName})")
	int join(User_nonsocialDTO dto);

	@Select("select * from reservation where user_name=#{user_name} and check_in=#{check_in} and check_out=#{check_out} order by room_idx")
	List<MotelDTO> selectList();

	@Update("update user_nonsocial set deleted='y' where idx=#{idx}")
	int delete(int idx);

}