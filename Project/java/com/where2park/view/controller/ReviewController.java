package com.where2park.view.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.where2park.biz.review.ReviewVO;
import com.where2park.biz.review.impl.ReviewDAOMybatis;

@Controller
public class ReviewController {
	@Resource(name="reviewDAO")
	private ReviewDAOMybatis reviewDAO;
	
	public ReviewController() {
		System.out.println("⇒");
	}
	
	@RequestMapping("/review_list.do")
	public void getReview(ReviewVO vo) {
		System.out.println(reviewDAO.getReview());
	}

}
