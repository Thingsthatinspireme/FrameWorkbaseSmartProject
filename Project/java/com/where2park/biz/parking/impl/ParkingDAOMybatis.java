package com.where2park.biz.parking.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.where2park.biz.parking.ParkingVO;

@Repository("parkingDAO")
public class ParkingDAOMybatis {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
//	public ParkingVO getParking() {
//		System.out.println("===> Mybatis로 getParking() 기능 처리");
//		return (ParkingVO)mybatis.selectOne("ParkingDAO.getParking");
//	}


	public List<ParkingVO> getParkingList(ParkingVO vo) {
		System.out.println("===> Mybatis로 getParkingList() 기능 처리");
		return mybatis.selectList("ParkingDAO.getParkingList" , vo);
	}


	public ParkingVO getParking(ParkingVO vo) {
		System.out.println("===> Mybatis로 getParking() 기능 처리");
		return (ParkingVO)mybatis.selectOne("ParkingDAO.getParking", vo);
	}


	public void insertParking(ParkingVO vo) {
		System.out.println("===> Mybatis로 insertParking() 기능 처리");
		mybatis.insert("ParkingDAO.insertParking", vo);
		
	}

	public void updateParking(ParkingVO vo) {
		System.out.println("--> updateParking() 기능처리");
		mybatis.update("ParkingDAO.updateParking", vo);
		
	}

	public void deleteParking(ParkingVO vo) {
		System.out.println("--> deleteParking()기능처리");
		mybatis.delete("ParkingDAO.deleteParking", vo);
		
		
	}


	public void updateParking_deleted(ParkingVO vo) {
		System.out.println("--> updateParking_deleted()기능처리");
		mybatis.update("ParkingDAO.updateParking_deleted", vo);
	}
	
	public void updateParking_down(ParkingVO vo) {
		mybatis.update("ParkingDAO.updateParking_down", vo);
	}
	
	public void updateParking_ori(ParkingVO vo) {
		mybatis.update("ParkingDAO.updateParking_ori", vo);
	}
}
