package com.where2park.biz.parking.impl;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.where2park.biz.parking.ParkingService;
import com.where2park.biz.parking.ParkingVO;

@Service("parkingService")
public class ParkingServiceImpl implements ParkingService {
	@Autowired
	private ParkingDAOMybatis parkingDAO;

	@Autowired
	HttpSession session;

	@Override
	public ParkingVO getParking(ParkingVO vo) {
		return parkingDAO.getParking(vo);
	}

	@Override
	public List<ParkingVO> getParkingList(ParkingVO vo) {
		return parkingDAO.getParkingList(vo);
	}

	@Override
	public void insertParking(ParkingVO vo) {
		parkingDAO.insertParking(vo);

	}

	@Override
	public void updateParking(ParkingVO vo) {
		parkingDAO.updateParking(vo);

	}

	@Override
	public void deleteParking(ParkingVO vo) {
		parkingDAO.deleteParking(vo);

	}

//	@Override
//	public void uploadFile(ParkingVO vo) throws Exception {
//
//		// 파일 업로드처리
//		MultipartFile uploadFile = vo.getUploadFile();
//		if (!uploadFile.isEmpty()) {
//			String fileName = uploadFile.getOriginalFilename();
//			
//			String parking_pic = System.currentTimeMillis()+ fileName.substring(fileName.lastIndexOf("."));
//			
//			// 상대경로 파일 저장
//			String rootPath = session.getServletContext().getRealPath("/");
//			String attachPath = "WEB-INF/images/";
//			uploadFile.transferTo(new File(rootPath + attachPath + parking_pic));
//			vo.setParking_pic(parking_pic);
////			session.setAttribute("parking_pic", parking_pic);
//		}
//
//	}

	@Override
	public void updateParking_deleted(ParkingVO vo) {
		parkingDAO.updateParking_deleted(vo);

	}

	@Override
	public void updateParking_down(ParkingVO vo) {
		parkingDAO.updateParking_down(vo);
	}

	@Override
	public void updateParking_ori(ParkingVO vo) {
		parkingDAO.updateParking_ori(vo);
	}

}
