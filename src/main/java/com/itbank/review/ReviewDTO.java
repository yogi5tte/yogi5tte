package com.itbank.review;

import java.sql.Date;

//	idx number  default review_seq.nextval primary key,
//	title varchar2(50) not null,
//	content varchar2(1000)  not null, --리뷰 내용(최소 10자, 최대 500자)
//	star    number  not null, --별점:최소1,최대5
//	nickname varchar2(20) not null, --닉네임
//	writeDate date  default sysdate,   --작성 일자
//	review_img  varchar2(255),  -- 리뷰 이미지
//	isDeleted   char(1) default 'n' check(isDeleted in ('n','y')),   --리뷰 삭제 여부
//	reservation_approved_idx number , --예약 완료 테이블 참조
//	user_idx    number not null, --유저 테이블 참조
//	info_idx    number  not null, --정보 테이블 참조
//	room_idx    number not null -- 룸 테이블 참조


public class ReviewDTO {
	private int idx;
	private String title;
	private String content;
	private int star;
	private String nickName;
	private Date writeDate;
	private String review_img;
	private char isDeleted;
	private int reservation_approved_idx;
	private int user_idx;
	private int info_idx;
	private int room_idx;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public String getReview_img() {
		return review_img;
	}
	public void setReview_img(String review_img) {
		this.review_img = review_img;
	}
	public char getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(char isDeleted) {
		this.isDeleted = isDeleted;
	}
	public int getReservation_approved_idx() {
		return reservation_approved_idx;
	}
	public void setReservation_approved_idx(int reservation_approved_idx) {
		this.reservation_approved_idx = reservation_approved_idx;
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

