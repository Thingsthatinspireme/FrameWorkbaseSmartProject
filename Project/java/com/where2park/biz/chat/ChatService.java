package com.where2park.biz.chat;

public interface ChatService {
	//채팅방 생성
	void insertChatroom(ChatVO vo);
	
	//채팅방 조회
	ChatVO selectChatroom(ChatVO vo);
	
	//채팅 내용 업로드
	ChatVO insertChat(ChatVO vo);
	//채팅 내용 삭제 (가능하면)
	ChatVO deleteChat(ChatVO vo);
	
}
