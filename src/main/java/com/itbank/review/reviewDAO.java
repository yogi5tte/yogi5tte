package com.itbank.review;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface reviewDAO {
	
	@Select("select * from review "
			+ "where info_idx = #{idx} and isDeleted = 'n' "
			+ "order by idx desc "
			+ "offset #{offset} rows "
			+ "fetch next 5 rows only")
	List<ReviewDTO> reviewList(@Param("idx")int idx, @Param("offset") int offset);

	
	
}
