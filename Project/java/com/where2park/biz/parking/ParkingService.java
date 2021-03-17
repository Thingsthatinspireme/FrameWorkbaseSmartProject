package com.where2park.biz.parking;

import java.util.List;

public interface ParkingService {
	
	//주차장빌려주기글 조회
	//ParkingVO getParking();
	
	ParkingVO getParking(ParkingVO vo);
	// 리스트로 뽑기
	List<ParkingVO> getParkingList(ParkingVO vo);
	
	void insertParking(ParkingVO vo);
	
	void updateParking(ParkingVO vo);
	
	void updateParking_deleted(ParkingVO vo);
	void updateParking_down(ParkingVO vo);
	void updateParking_ori(ParkingVO vo);
	
	void deleteParking(ParkingVO vo);
	
	//업로드
	//void uploadFile(ParkingVO vo) throws Exception;
}
