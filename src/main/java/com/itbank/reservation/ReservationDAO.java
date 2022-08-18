package com.itbank.reservation;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface ReservationDAO {
   
   @Select("select * from reservation where idx=#{idx}")
   ReservationDTO selectReservation(int idx);
   
   

   

}