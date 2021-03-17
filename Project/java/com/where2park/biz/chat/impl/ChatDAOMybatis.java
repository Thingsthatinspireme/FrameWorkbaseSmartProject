package com.where2park.biz.chat.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.where2park.biz.chat.ChatVO;

@Repository("chatDAO")
public class ChatDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertChatroom(ChatVO vo) {
		System.out.println("===> Mybatis로 insertChatroom() 기능 처리");
		mybatis.insert("ChatDAO.insertChatroom", vo);
		//mybatis.commit();
	}
	
	public ChatVO selectChatroom(ChatVO vo) {
		System.out.println("===> Mybatis로 selectChatroom() 기능 처리");
		return (ChatVO)mybatis.selectOne("ChatDAO.selectChatroom", vo);
	}
}