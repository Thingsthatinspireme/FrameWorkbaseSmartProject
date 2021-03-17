package com.where2park.view.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.where2park.biz.parking.ParkingService;
import com.where2park.biz.parking.ParkingVO;

@Controller
@SessionAttributes("parking")
public class ParkingController {

	@Autowired
	private ParkingService parkingService;

	@Autowired
	HttpSession session;

	@RequestMapping("/insertParking.do")
	public String insertParking(ParkingVO vo) throws Exception {
		// 파일 업로드처리
		MultipartFile uploadFile = vo.getUploadFile();
		if (!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();

			String parking_pic = System.currentTimeMillis() + fileName.substring(fileName.lastIndexOf("."));

			// 상대경로 파일 저장
			//String rootPath = session.getServletContext().getRealPath("/");
					
			String attachPath = "D:\\finalproject\\Where2Park\\src\\main\\webapp\\WEB-INF\\images\\";
			uploadFile.transferTo(new File(attachPath + parking_pic));
			vo.setParking_pic(parking_pic);
			// session.setAttribute("parking_pic", parking_pic);
			// parkingService.uploadFile(vo);
			
		}else vo.setParking_pic("000");
		
		parkingService.insertParking(vo);

		return "getParkingList.do";
	}

	@RequestMapping("/getParking.do")
	public String getParking(ParkingVO vo, Model model) {
		model.addAttribute("parking", parkingService.getParking(vo));
		return "parking/getParking.jsp";
	}

	@RequestMapping("/getParkingList.do")
	public String getParkingList(ParkingVO vo, Model model) {
		model.addAttribute("parkingList", parkingService.getParkingList(vo));
		System.out.println(vo);
		return "parking/getParkingList.jsp";
	}

	@RequestMapping("/updateParking.do")
	public String updateParking(ParkingVO vo) {
		parkingService.updateParking(vo);
		return "getParkingList.do";
	}

	@RequestMapping("/updateParking_deleted.do")
	public String updateParking_deleted(ParkingVO vo) {
		parkingService.updateParking_deleted(vo);
		return "getParkingList.do";
	}

	@RequestMapping("/updateParking_down.do")
	public String updqteParking_down(ParkingVO vo) {
		parkingService.updateParking_down(vo);
		return "getParkingList.do";
	}

	@RequestMapping("/updateParking_ori.do")
	public String updateParking_ori(ParkingVO vo) {
		parkingService.updateParking_ori(vo);
		return "getParkingList.do";
	}

	@RequestMapping("/deleteParking.do")
	public String deleteParking(ParkingVO vo) {
		parkingService.deleteParking(vo);
		return "getParkingList.do";
	}

}
