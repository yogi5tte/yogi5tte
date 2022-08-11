package com.itbank.room;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface MotelDAO {

//	@Select("select * from room where district=#{dto.district} order by idx")
//	List<MotelDTO> selectList(MotelDTO dto);
	
	@Select("select * from room order by idx")
	List<MotelDTO> selectList();

//	@Select("select * from room where ")
//	List<MotelDTO> showList();
	
//	@Select("select * from room where district=#{target} order by idx")
//	List<MotelDTO> selectList(String target);

}
