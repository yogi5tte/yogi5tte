package com.itbank.room;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface MotelDAO {

	@Select("select * from info order by idx where idx=#{category}")
	List<MotelDTO> selectList();

//	@Select("select * from info order by idx")
//	List<MotelDTO> showList(HashMap<String, String> param);

}
