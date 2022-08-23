package com.itbank.info;


import java.util.HashMap;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
@Repository
public interface InfoDAO {

	@Select("select * from info where idx = #{idx}")
	InfoDTO selectInfo(int idx);
	
	@Select("select * from info a join room b "
			+ "on a.idx = b.info_idx where b.idx = #{idx}")
	InfoDTO checkProduct(HashMap<String, String> room_idx);
	
}
