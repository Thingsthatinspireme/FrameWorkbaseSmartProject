package com.where2park.view.controller;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.where2park.biz.parking.ParkingVO;
import com.where2park.biz.parking.impl.ParkingDAOMybatis;

@Controller
public class MainSearchController {
	@Resource(name = "parkingDAO")
	private ParkingDAOMybatis parkingDAO;
	
	
	public MainSearchController() {
		System.out.println("====> MainSearchController 객체 생성");
	}
	
	@RequestMapping("/getSearchParkingList.do")
	public void getSearchParkingList(ParkingVO vo) {
		System.out.println(vo.getParking_location());
		System.out.println(vo.getParking_intime());
	}
	
	@RequestMapping("/test.do")
	public void getParkingTest(ParkingVO vo) {
		System.out.println(vo.getParking_location());
		System.out.println("getParkingTest객체 생성");
//		System.out.println(parkingDAO.getParking());
	}
}
