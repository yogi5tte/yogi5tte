package com.itbank.reservation;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface ReservationDAO {

	@Select("select * "
			+ "from reservation a, total_user b, info c, room d "
			+ "where a.idx = 2 and a.user_idx = b.idx and a.info_idx = c.idx "
			+ "and a.room_idx = d.idx")
	List<ReservationDTO> getReserList();

}
