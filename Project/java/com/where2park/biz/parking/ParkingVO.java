package com.where2park.biz.parking;

import org.springframework.web.multipart.MultipartFile;


public class ParkingVO {
	private int parking_id;
	private int owner_id;
	private String parking_type;
	private String parking_title;
	private String parking_content;
	private String parking_pic;
	private String parking_location;
	private String parking_cartype;
	private int parking_price;
	private String parking_intime;
	private String parking_outtime;
	private int parking_deleted;
	//파일 업로드 변수 추가
	private MultipartFile uploadFile;
	
	
	
	@Override
	public String toString() {
		return "ParkingVO [parking_id=" + parking_id + ", owner_id=" + owner_id + ", parking_type=" + parking_type
				+ ", parking_title=" + parking_title + ", parking_content=" + parking_content + ", parking_pic="
				+ parking_pic + ", parking_location=" + parking_location + ", parking_cartype=" + parking_cartype
				+ ", price=" + parking_price + ", parking_intime=" + parking_intime + ", parking_outtime=" + parking_outtime
				+ ", parking_deleted=" + parking_deleted + "]";
	}



	public int getParking_id() {
		return parking_id;
	}



	public void setParking_id(int parking_id) {
		this.parking_id = parking_id;
	}



	public int getOwner_id() {
		return owner_id;
	}



	public void setOwner_id(int owner_id) {
		this.owner_id = owner_id;
	}



	public String getParking_type() {
		return parking_type;
	}



	public void setParking_type(String parking_type) {
		this.parking_type = parking_type;
	}



	public String getParking_title() {
		return parking_title;
	}



	public void setParking_title(String parking_title) {
		this.parking_title = parking_title;
	}



	public String getParking_content() {
		return parking_content;
	}



	public void setParking_content(String parking_content) {
		this.parking_content = parking_content;
	}



	public String getParking_pic() {
		return parking_pic;
	}



	public void setParking_pic(String parking_pic) {
		this.parking_pic = parking_pic;
	}



	public String getParking_location() {
		return parking_location;
	}



	public void setParking_location(String parking_location) {
		this.parking_location = parking_location;
	}



	public String getParking_cartype() {
		return parking_cartype;
	}



	public void setParking_cartype(String parking_cartype) {
		this.parking_cartype = parking_cartype;
	}



	public int getParking_price() {
		return parking_price;
	}



	public void setParking_price(int parking_price) {
		this.parking_price = parking_price;
	}



	public String getParking_intime() {
		return parking_intime;
	}



	public void setParking_intime(String parking_intime) {
		this.parking_intime = parking_intime;
	}



	public String getParking_outtime() {
		return parking_outtime;
	}



	public void setParking_outtime(String parking_outtime) {
		this.parking_outtime = parking_outtime;
	}



	public int getParking_deleted() {
		return parking_deleted;
	}



	public void setParking_deleted(int parking_deleted) {
		this.parking_deleted = parking_deleted;
	}



	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
	
	
}
