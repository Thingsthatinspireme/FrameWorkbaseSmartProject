package com.where2park.biz.review.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.where2park.biz.review.ReviewService;
import com.where2park.biz.review.ReviewVO;

public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDAOMybatis reviewDAO;
	
	@Autowired
	HttpSession session;
	
	@Override
	public void insertReview(ReviewVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateReview(ReviewVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteReview(ReviewVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public ReviewVO getReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewVO> getReviewList(ReviewVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
