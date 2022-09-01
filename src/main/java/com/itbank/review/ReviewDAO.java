package com.itbank.review;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.itbank.room.RoomDTO;

@Repository
public interface ReviewDAO {
	
	@Select("select * from review "
			+ "where info_idx = #{idx} and isDeleted = 'n' "
			+ "order by idx desc "
			+ "offset #{offset} rows "
			+ "fetch next 5 rows only")
	List<ReviewDTO> reviewList(@Param("idx")int idx, @Param("offset") int offset);

	@Select("select count(*) as review_count, avg(star) as star from review V where V.info_idx = #{idx}")
	List<RoomDTO> selectReviewCount(int idx);

}