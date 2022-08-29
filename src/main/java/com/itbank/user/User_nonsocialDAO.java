package com.itbank.user;



import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.itbank.reservation.ReservationDTO;
import com.itbank.reservation.RsvnApproveDTO;



@Repository
public interface User_nonsocialDAO {
	

	@Select("select * from total_user where email=#{email} and password=#{password}")
	User_nonsocialDTO login(User_nonsocialDTO dto);

	@Insert("insert into user_nonsocial (email, password, nickName) values (#{email},#{password},#{nickName})")
	int join(User_nonsocialDTO dto);

	@Update("update user_nonsocial set deleted='y' where idx=#{idx}")
	int delete(int idx);

	
	//회원의 예약 내역 조회
	@Select("select * from reservation_approve where user_idx = #{idx}")
	List<RsvnApproveDTO> selectRsvnList(int idx);
	
	

}