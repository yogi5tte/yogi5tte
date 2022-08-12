package com.itbank.room;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface MotelDAO {

	@Select("select i.name, i.seller_text, i.product_img, i.review_count, p.pType, r.price, r.human_count, l.city, l.gu"
			+ " from info i, location l, product p, room r"
			+ " where p.idx = i.idx and p.location_idx = l.idx and r.info_idx = i.idx and l.category = #{idx}")
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
