package com.itbank.room;

import java.util.HashMap;
import java.util.List;


import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.annotations.Param;

@Repository
public interface RoomDAO {
	
	List<RoomDTO> themeList(HashMap<String, Object> param);
	
	@Select(" select P.idx, I.name, I.product_img, P.pType, R.info_idx, L.city, L.gu, " + 
			"        min(R.price) as price" + 
			"            from info I" + 
			"    join product P  on P.idx = I.idx" + 
			"    join room R     on R.info_idx = I.idx " + 	
			"    join location L on L.idx = P.location_idx" + 
			"    join theme T    on t.info_idx = i.idx" +	
			"	 join review V   on v.info_idx = i.idx" +
			"    where L.category = #{category} and P.pType = #{pType} and" +
			" 	 R.human_count >= #{human_count} and T.op1 = 'n' " + 
			"    group by P.idx, I.name, I.product_img, P.pType, R.info_idx, L.city, L.gu" + 
			"    order by price")
	List<RoomDTO> selectList(@Param("category") int category,
							 @Param("pType") int pType,
			  				 @Param("human_count") int human_count);

	
	// 예약 시, 방 정보를 조회
	@Select("select * from room a left join info b "
			+ "on b.idx = a.info_idx where a.idx=#{idx}")
	RoomDTO checkRoom(HashMap<String, String> room_idx);
	
	@Select("select * "
			+ "from room a left join info b "
			+ "on b.idx = a.info_idx where a.info_idx = #{idx}")	
	List<RoomDTO> selectRoom(int idx);

	@Select("select count(*) as review_count, avg(star) as star from review V where V.info_idx = #{idx}")
	List<RoomDTO> review(int idx);

}
