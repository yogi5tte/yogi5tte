package com.itbank.reservation;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface ReservationDAO {
	

	//예약 테이블 데이터 추가
	@Insert("insert into reservation "
			+ "(userName,phoneNumber,total_amount,check_in,check_out,quantity,human_count,info_idx,room_idx) " + 
			" values(#{userName},#{phoneNumber},#{total_amount},#{check_in},#{check_out},#{quantity},#{human_count},#{info_idx},#{room_idx})")
	int insertReservation(ReservationDTO rsvnDto);

	//결제 테이블에서 예약 테이블 데이터 조회(가장 최신에 등록된 것을 조회)
	@Select("select * from reservation where room_idx = #{room_idx} and username = #{userName} "
			+ "order by idx desc offset 0 rows fetch first 1 rows only")
	ReservationDTO selectReservation(HashMap<String, Object> param);
	
	@Select("select * from reservation a, info b, room c " + 
			"where a.idx = #{idx} and a.info_idx = b.idx and a.room_idx = c.idx")
	ReservationDTO checkReservation(int idx);

	

}


