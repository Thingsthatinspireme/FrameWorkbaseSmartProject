package com.where2park.biz.review.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.where2park.biz.review.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAOMybatis {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ReviewVO getReview() {
		System.out.println("⇒ Mybatis로 getParking() 기능 처리");
		return (ReviewVO)mybatis.selectOne("ReviewDAO.getReview");
	}
	
}
