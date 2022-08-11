package com.itbank.info;

import java.sql.Date;

//idx     number      default info_seq.nextval primary key,
//name    varchar(50) unique not null,       --숙소 이름
//check_in date   not null,           --체크인
//check_out date  not null,           --체크아웃
//seller_text varchar2(2000),         --사장님 한마디
//how_use     varchar2(2000) not null, --상세 규칙
//product_idx number  not null,       --상품 테이블 참조
//product_img varchar2(255)   not null, --상품 이미지
//review_count    number      not null, --count(review_idx) 이용
//longtitude      number      not null,  --위도(소수점 6자리수 까지)
//latitude        number      not null,   --경도(소수점 6자리수 까지)

public class InfoDTO {
	private int idx;
	private String name;
	private Date check_in;
	private Date check_out;
	private String seller_text;
	private String how_use;
	private int product_idx;
	private String product_img;
	private int review_count;
	private double longtitue;
	private double latitude;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getCheck_in() {
		return check_in;
	}
	public void setCheck_in(Date check_in) {
		this.check_in = check_in;
	}
	public Date getCheck_out() {
		return check_out;
	}
	public void setCheck_out(Date check_out) {
		this.check_out = check_out;
	}
	public String getSeller_text() {
		return seller_text;
	}
	public void setSeller_text(String seller_text) {
		this.seller_text = seller_text;
	}
	public String getHow_use() {
		return how_use;
	}
	public void setHow_use(String how_use) {
		this.how_use = how_use;
	}
	public int getProduct_idx() {
		return product_idx;
	}
	public void setProduct_idx(int product_idx) {
		this.product_idx = product_idx;
	}
	public String getProduct_img() {
		return product_img;
	}
	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}
	public int getReview_count() {
		return review_count;
	}
	public void setReview_count(int review_count) {
		this.review_count = review_count;
	}
	public double getLongtitue() {
		return longtitue;
	}
	public void setLongtitue(double longtitue) {
		this.longtitue = longtitue;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	
	
}
