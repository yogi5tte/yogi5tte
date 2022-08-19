package com.itbank.reservation;

import java.sql.Date;

public class ReservationDTO {
	
	private int idx;
	private String user_Name;
	private String phone_Number;
	private int total_Amount;
	private Date check_In;
	private Date check_Out;
	private int quantity;
	private int human_Count;
	private char isDeleted;
	private int user_Idx;
	private int info_Idx;
	private int room_Idx;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUser_Name() {
		return user_Name;
	}
	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}
	public String getPhone_Number() {
		return phone_Number;
	}
	public void setPhone_Number(String phone_Number) {
		this.phone_Number = phone_Number;
	}
	public int getTotal_Amount() {
		return total_Amount;
	}
	public void setTotal_Amount(int total_Amount) {
		this.total_Amount = total_Amount;
	}
	public Date getCheck_In() {
		return check_In;
	}
	public void setCheck_In(Date check_In) {
		this.check_In = check_In;
	}
	public Date getCheck_Out() {
		return check_Out;
	}
	public void setCheck_Out(Date check_Out) {
		this.check_Out = check_Out;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getHuman_Count() {
		return human_Count;
	}
	public void setHuman_Count(int human_Count) {
		this.human_Count = human_Count;
	}
	public char getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(char isDeleted) {
		this.isDeleted = isDeleted;
	}
	public int getUser_Idx() {
		return user_Idx;
	}
	public void setUser_Idx(int user_Idx) {
		this.user_Idx = user_Idx;
	}
	public int getInfo_Idx() {
		return info_Idx;
	}
	public void setInfo_Idx(int info_Idx) {
		this.info_Idx = info_Idx;
	}
	public int getRoom_Idx() {
		return room_Idx;
	}
	public void setRoom_Idx(int room_Idx) {
		this.room_Idx = room_Idx;
	}
	
	
	
}
