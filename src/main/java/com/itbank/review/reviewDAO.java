package com.itbank.review;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface reviewDAO {

	@Select("select * " + 
			"from review a, room b " + 
			"where a.room_idx = b.idx and isDeleted = 'n'")
	
}
