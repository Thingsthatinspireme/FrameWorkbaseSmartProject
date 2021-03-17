package com.where2park.biz.review;

import java.util.Date;

public class ReviewVO {
	private int review_id;	
	private int user_id;	
	private int reser_id;	
	private Date review_date;
	private String review_content;	
	private int review_rating;
	
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getReser_id() {
		return reser_id;
	}
	public void setReser_id(int reser_id) {
		this.reser_id = reser_id;
	}
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public int getReview_rating() {
		return review_rating;
	}
	public void setReview_rating(int review_rating) {
		this.review_rating = review_rating;
	}
	@Override
	public String toString() {
		return "ReviewVO [review_id=" + review_id + ", user_id=" + user_id + ", reser_id=" + reser_id + ", review_date="
				+ review_date + ", review_content=" + review_content + ", review_rating=" + review_rating + "]";
	}
}
