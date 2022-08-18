package com.itbank.reservation;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface ReservationDAO {
	
	@Select("select * from reservation where idx=#{idx}")
	ReservationDTO selectReservation(int idx);
	
//	@Insert("insert into reservation "
//			+ "(user_name,phone_number,total_amount,check_in,check_out,quantity,human_count,user_idx,info_idx,room_idx) " + 
//			" values(#{user_name},#{phone_number},#{total_amount},#{check_in},#{check_out},#{quantity},#{human_count},#{user_idx},#{info_idx},#{room_idx});")
//	int inserReservation(ReservationDTO rsvnDto);
//	
	

	

}
