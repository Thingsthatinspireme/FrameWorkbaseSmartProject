package com.where2park.view.controller;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.where2park.biz.reservation.RsvService;
import com.where2park.biz.reservation.RsvVO;
import com.where2park.biz.reservation.impl.RsvDAOMybatis;
@Controller
class ReservationController{
	@Resource(name = "rsvDAO")
	private RsvDAOMybatis RsvDAO;
	
	@Autowired
	private RsvService rsvService;
	
	public ReservationController(){
		System.out.println("주차 컨트롤러 객체 생성");
	}
	
	@RequestMapping("/getRsv.do")
	public String getRsv(RsvVO vo, Model model) {
		System.out.println("getRsv객체 생성");
		model.addAttribute("rsv", rsvService.getRsv(vo));
		return "rsv/getRsv.jsp";
		
	}
	
	@RequestMapping("/getRsvList.do")
	public String getRsvList(RsvVO vo, Model model) {
		System.out.println("getRsvList객체 생성");
		model.addAttribute("RsvList", rsvService.getRsvList(vo));
		return "rsv/getRsvList.jsp";
		
	}
	
	@RequestMapping("/insertRsv.do")
	public String insertRsv(RsvVO vo) {
		System.out.println("insertRsv객체 생성");
		RsvDAO.insertRsv(vo);
		//insertRsv 한다음에 거기서 rsv_id랑 paker_id받아서 넣어줘야됨 - 은지
		rsvService.insertChatroom(vo);
		return "getRsvList.do";
		//DB 제약조건 때문에 같은 owner의 예약건 두개이상 삽입 불가. 해결완료
	}
	@RequestMapping("/updateRsv.do")
	public String updateRsv(RsvVO vo) {
		RsvDAO.updateRsv(vo);
		return "getRsvList.do";
	}
	
	@RequestMapping("/deleteRsv.do")
	public String deleteRsv(RsvVO vo) {
		RsvDAO.deleteRsv(vo);
		return "getRsvList.do";
	}
	
	
}