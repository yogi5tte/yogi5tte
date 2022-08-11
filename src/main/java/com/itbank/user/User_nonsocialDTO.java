package com.itbank.user;
//create table user_nonSocial(
//		idx 		                    number			default user_nonSocial_seq.nextval primary key,
//		email		                    VARCHAR2(45)	UNIQUE NOT NULL,   
//		password	                    varchar2(100)	not null,
//	    name                            VARCHAR2(20)    not null,   
//	    nickname                        VARCHAR2(50)    UNIQUE NOT NULL,
//	    phoneNumber                     VARCHAR2(50)    UNIQUE NOT NULL,
//	    type                            number          default 101
//	    
//	);
public class User_nonsocialDTO {
	private String email, password, nickName;
	private int idx, type;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	
	
	
	
}
