package com.itbank.room;

//	create table room(
//	idx             number          default room_seq.nextval primary key,
//	name            varchar2(50)    not null,
//	price           number          not null,
//	week            varchar2(20)    check(week in ('주중','주말')),
//	room_img        varchar2(255)   not null,
//	human_count     number          not null, --min 1 / max 4
//	city            varchar2(20)    not null,   --시
//	district        varchar2(50)    not null   --구
//	);

public class MotelDTO {
	
	private int idx, price, human_count, review_count, city, category, gu;		// 2001부터 시작하는 idx
	private String name, seller_text, pType, product_img, week, room_img, district;	// 테마
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getHuman_count() {
		return human_count;
	}
	public void setHuman_count(int human_count) {
		this.human_count = human_count;
	}
	public int getReview_count() {
		return review_count;
	}
	public void setReview_count(int review_count) {
		this.review_count = review_count;
	}
	public int getCity() {
		return city;
	}
	public void setCity(int city) {
		this.city = city;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public int getGu() {
		return gu;
	}
	public void setGu(int gu) {
		this.gu = gu;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSeller_text() {
		return seller_text;
	}
	public void setSeller_text(String seller_text) {
		this.seller_text = seller_text;
	}
	public String getpType() {
		return pType;
	}
	public void setpType(String pType) {
		this.pType = pType;
	}
	public String getProduct_img() {
		return product_img;
	}
	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public String getRoom_img() {
		return room_img;
	}
	public void setRoom_img(String room_img) {
		this.room_img = room_img;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	
}