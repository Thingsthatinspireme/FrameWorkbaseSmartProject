package com.where2park.biz.chat.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.where2park.biz.chat.ChatService;
import com.where2park.biz.chat.ChatVO;

@Service("chatService")
public class ChatServiceImpl implements ChatService {
	@Autowired
	private ChatDAOMybatis chatDAO;
	
	@Override
	public void insertChatroom(ChatVO vo) {
		System.out.println("====>ChatServiceImpl.insertChatroom 실행");
		chatDAO.insertChatroom(vo);
	} // 채팅방 개설

	@Override
	public ChatVO selectChatroom(ChatVO vo) {
		System.out.println("====>ChatServiceImpl.selectChatroom 실행");
		return chatDAO.selectChatroom(vo);
	} //채팅방 검색 (채팅방을 재접속 했을 때 사용)
	
	@Override
	public ChatVO insertChat(ChatVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ChatVO deleteChat(ChatVO vo) {
		// TODO Auto-generated method stub
		return null;
	}



}

