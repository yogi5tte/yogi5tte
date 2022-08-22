package com.itbank.room;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface MotelDAO {

	@Select("select i.name, i.seller_text, i.product_img, i.review_count, p.pType, r.price, r.human_count, l.city, l.gu"
			+ " from info i, location l, product p, room r, theme t"
			+ " where p.idx = i.idx and p.location_idx = l.idx and"
			+ " t.info_idx = i.idx and r.info_idx = i.idx and"
			+ " l.category = #{category} and p.pType = #{pType} and"
			+ " r.human_count >= #{human_count} and t.op1 = 'n'")
	List<MotelDTO> selectList(@Param("category") int category,
							  @Param("pType") int pType,
							  @Param("human_count") int human_count);

	@Select("select * "
			+ "from room a, info b "
			+ "where b.idx = #{idx}")
	List<MotelDTO> selectRoom(int idx);
	

}
