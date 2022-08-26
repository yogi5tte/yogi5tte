package com.itbank.reservation;

import java.sql.Date;

public class RsvnApproveDTO {
 private String name; 
 private String roomName;
 private Date check_in;
 private Date check_out;
 private int reservation_idx;
 private int user_idx;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getRoomName() {
	return roomName;
}
public void setRoomName(String roomName) {
	this.roomName = roomName;
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
public int getReservation_idx() {
	return reservation_idx;
}
public void setReservation_idx(int reservation_idx) {
	this.reservation_idx = reservation_idx;
}
public int getUser_idx() {
	return user_idx;
}
public void setUser_idx(int user_idx) {
	this.user_idx = user_idx;
}
 
}
