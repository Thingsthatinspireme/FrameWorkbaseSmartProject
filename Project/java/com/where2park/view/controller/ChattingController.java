package com.where2park.view.controller;

import java.util.ArrayList;

import java.util.List;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.RemoteEndpoint.Basic;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.where2park.biz.chat.ChatService;
import com.where2park.biz.chat.ChatVO;

@Controller
//webSocket으로 접속 가능한 url정보를 명시 소켓서버 생성, 이 클래스는 서버라는 것을 명시 (싱글톤 패턴으로 관리)
public class ChattingController {
	//private final SimpMessagingTemplate simpMessagingTemplate = null;
	@Autowired
	private ChatService chatService;

	public ChattingController() {
		System.out.println("======>채팅 컨트롤러 객체 생성");
	}
	
	@RequestMapping("/chatroom.do")
	public String openChatroom(ChatVO vo, Model model) {
		System.out.println("===>openChatroom");
		System.out.println(vo.getRsv_id());
		
		int chatroom = chatService.selectChatroom(vo).getChatroom_id();
		System.out.println("==========> chatroom_id : " + chatroom + "입장 <==========");
		model.addAttribute("chatroom", chatroom);
		
		return "/chat-random.jsp";
	}
	
//	@RequestMapping("/chatting.do")
//	public String startChat(HttpSession session) {
//		session.getAttribute("chatroom");
//	    return null;
//	}

	
//	@MessageMapping("/chat/send")
//	public void snedMessage(ChatMessage ) {
//		service.insertChatroom(vo);
//		return "chat";
//	}
	
}

