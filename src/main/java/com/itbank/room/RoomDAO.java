package com.itbank.room;

import java.util.HashMap;
import java.util.List;


import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.annotations.Param;


@Repository
public interface RoomDAO {
	
	@Select("select i.name, i.seller_text, i.product_img, i.review_count, p.pType, r.price, r.human_count, l.city, l.gu, p.idx"
			+ " from info i, location l, product p, room r, theme t"
			+ " where p.idx = i.idx and p.location_idx = l.idx and"
			+ " t.info_idx = i.idx and r.info_idx = i.idx and"
			+ " l.category = #{category} and p.pType = #{pType} and"
			+ " r.human_count >= #{human_count} and t.op1 = 'n' order by r.price")
	List<RoomDTO> selectList(@Param("category") int category,
							  @Param("pType") int pType,
							  @Param("human_count") int human_count);

	@Select("select * "
			+ "from room a left join info b "
			+ "on b.idx = a.info_idx where a.info_idx = #{idx}")	
	List<RoomDTO> selectRoom(int idx);
	
	// 예약 시, 방 정보를 조회
	@Select("select * from room a left join info b "
			+ "on b.idx = a.info_idx where a.idx=#{idx}")
	RoomDTO checkRoom(HashMap<String, String> room_idx);


}
