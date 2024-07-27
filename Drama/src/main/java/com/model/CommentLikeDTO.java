package com.model;

import java.util.Date;

public class CommentLikeDTO {

	private int cmt_like;
	private String email;
	private int cmt_num;
	private Date cmt_like_date;
	 
	public CommentLikeDTO() {
		 
	}
	public CommentLikeDTO(int cmt_like, String email, int cmt_num) { 
		this.cmt_like = cmt_like;
		this.email = email;
		this.cmt_num = cmt_num;
	}
	public CommentLikeDTO(int cmt_like, String email, int cmt_num, Date cmt_like_date) { 
		this.cmt_like = cmt_like;
		this.email = email;
		this.cmt_num = cmt_num;
		this.cmt_like_date = cmt_like_date;
	}

	public int getCmt_like() {
		return cmt_like;
	}
	public void setCmt_like(int cmt_like) {
		this.cmt_like = cmt_like;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getCmt_num() {
		return cmt_num;
	}
	public void setCmt_num(int cmt_num) {
		this.cmt_num = cmt_num;
	}
	public Date getCmt_like_date() {
		return cmt_like_date;
	}
	public void setCmt_like_date(Date cmt_like_date) {
		this.cmt_like_date = cmt_like_date;
	}
	
	
	
	
	
}
