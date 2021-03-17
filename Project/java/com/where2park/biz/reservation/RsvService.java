package com.where2park.biz.reservation;

import java.util.List;

public interface RsvService {

	void insertRsv(RsvVO vo);
	void updateRsv(RsvVO vo);
	void deleteRsv(RsvVO vo);
	RsvVO getRsv(RsvVO vo);
	List<RsvVO> getRsvList(RsvVO vo);
	
	//채팅방 생성
	void insertChatroom(RsvVO vo);
}

