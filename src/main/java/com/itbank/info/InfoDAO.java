package com.itbank.info;


import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
@Repository
public interface InfoDAO {

	@Select("select * from info where idx = #{idx}")
	InfoDTO selectInfo(int idx);

}
