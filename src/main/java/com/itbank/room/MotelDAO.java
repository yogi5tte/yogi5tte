package com.itbank.room;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface MotelDAO {

	@Select("select * from info order by idx where category=#{idx}")
	List<MotelDTO> selectList(int idx);

	@Select("select * "
			+ "from room a, info b "
			+ "where b.idx = #{idx}")
	List<MotelDTO> selectRoom(int idx);

//	@Select("select * from room where ")
//	List<MotelDTO> showList();
	
//	@Select("select * from room where district=#{target} order by idx")
//	List<MotelDTO> selectList(String target);


}
