package com.itbank.reservation;

import java.sql.Date;

<<<<<<< HEAD
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
=======
/*
 * idx             number          default reservation_seq.nextval PRIMARY key,
    user_name       varchar2(50)         not null,           --예약자 이름
    phone_number    varchar2(50)    not null,        --전화 번호
    total_amount    number          not null,        --총 결제 금액
    check_in        date            not null,        --체크인
    check_out       date            not null,        --체크아웃
    quantity        number          not null,   -- 수량(박)
    human_count     number          not null,
    isdeleted char(1)   default 'n' check(isdeleted in ('n','y')),
    info_idx        number          not null,   --정보 테이블 참조
    room_idx         number          not null  --방 테이블 참조
 */
public class ReservationDTO {
	private int idx;
	private String userName;
	private String phoneNumber;
	private int total_amount;
	private int human_count;
	private Date check_in,check_out;
	private char isdeleted;
	private int info_idx,room_idx;
	private String imp_uid;
	
	public String getImp_uid() {
		return imp_uid;
	}
	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}
	public int getHuman_count() {
		return human_count;
	}
	public void setHuman_count(int human_count) {
		this.human_count = human_count;
	}
	private int quantity;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public int getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
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
	public char getIsdeleted() {
		return isdeleted;
	}
	public void setIsdeleted(char isdeleted) {
		this.isdeleted = isdeleted;
	}
	public int getInfo_idx() {
		return info_idx;
	}
	public void setInfo_idx(int info_idx) {
		this.info_idx = info_idx;
	}
	public int getRoom_idx() {
		return room_idx;
	}
	public void setRoom_idx(int room_idx) {
		this.room_idx = room_idx;
	}
	
	
}

>>>>>>> branch 'main' of https://github.com/yogi5tte/yogi5tte.git
