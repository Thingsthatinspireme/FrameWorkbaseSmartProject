package com.where2park.view.handler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Component
public class WebSocketHandler extends TextWebSocketHandler {
	private List<WebSocketSession> sessions = new ArrayList<>();
	private Map<WebSocketSession, String > chatroom = new HashMap<>();
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		sessions.add(session);

		System.out.println("====>웹소켓 연결" + session.getId());
		
	}//연결되어 있을 때 
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		TextMessage msg = new TextMessage(message.getPayload());
		String[] content = msg.getPayload().split(":");
		String chatroom_id = content[0];
		
		if(!chatroom.containsKey(session)) {
		chatroom.put(session, chatroom_id);
		System.out.println(chatroom.get(session) + " : chatroom에 추가한 세션");
		}

		for(WebSocketSession sess : chatroom.keySet()) {
//			System.out.println(chatroom.get(sess) + sess);
//			System.out.println(chatroom.get(session) + session);
//			System.out.println(sess + "sess 출력");
			if(chatroom.get(sess).equals(chatroom.get(session))) {
				sess.sendMessage(message);
				System.out.println("====>메세지 전송 :" + message + sess.getId() +":"+ chatroom_id +":"+ session.getId());
			}
		}

	
	}//메서지 전송 (접속한 모든 세션들에게 메세지를 뿌려줌)
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		sessions.remove(session);
		System.out.println("====>연결 종료");
	}//연결이 끊어졌을 때 
}
