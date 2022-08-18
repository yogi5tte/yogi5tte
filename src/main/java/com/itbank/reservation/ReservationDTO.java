package com.itbank.reservation;

import java.sql.Date;

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
    user_idx        number          not null,   --유저 테이블 참조
    info_idx        number          not null,   --정보 테이블 참조
    room_idx         number          not null  --방 테이블 참조
 */
public class ReservationDTO {
	private int idx;
	private String user_name;
	private String phone_number;
	private int total_amount;
	private Date check_in,check_out;
	private char isdeleted;
	private int user_idx,info_idx,room_idx;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public int getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
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
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
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
