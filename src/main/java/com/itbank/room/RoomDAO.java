package com.itbank.room;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface RoomDAO {

//	@Select("select * from room where district=#{dto.district} order by idx")
//	List<MotelDTO> selectList(MotelDTO dto);
	
	@Select("select * from room order by idx")
	List<RoomDTO> selectList();

	@Select("select * "
			+ "from room a, info b "
			+ "where b.idx = #{idx}")
	List<RoomDTO> selectRoom(int idx);

	//예약 시, 방 정보를 조회
	   @Select("select * from room a left join info b "
	         + "on b.idx = a.info_idx where a.idx=#{idx}")
	   RoomDTO checkRoom(HashMap<String, String> room_idx);
	
//	@Select("select * from room where ")
//	List<MotelDTO> showList();
	
//	@Select("select * from room where district=#{target} order by idx")
//	List<MotelDTO> selectList(String target);

}
