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

public class RoomDTO {
	
	private int idx, price, human_count;		// 2001부터 시작하는 idx
	private String roomName, week, room_img, city, district;	// 테마
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
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;	
	}
	
}
