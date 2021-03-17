package com.where2park.biz.reservation.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.where2park.biz.reservation.RsvVO;

@Repository("rsvDAO")
public class RsvDAOMybatis {

	@Autowired
	private SqlSessionTemplate mybatis;
// 아직..
		public void insertRsv(RsvVO vo) {
			System.out.println("===>Mybatis로 insertRsv 기능 구현");
			mybatis.insert("RsvDAO.insertRsv", vo);
		}

	public void updateRsv(RsvVO vo) {
		System.out.println("===>Mybatis로 updateRsv 기능 구현");
		mybatis.update("RsvDAO.updateRsv", vo);
	}

	public void deleteRsv(RsvVO vo) {
		System.out.println("===>Mybatis로 deleteRsv 기능 구현");
		mybatis.delete("RsvDAO.deleteRsv", vo);
	}

	public RsvVO getRsv(RsvVO vo) {
		System.out.println("===>Mybatis로 getRsv 기능 구현");
		return (RsvVO) mybatis.selectOne("RsvDAO.getRsv", vo);
	}

	public List<RsvVO> getRsvList(RsvVO vo) {
		System.out.println("===>Mybatis로 getRsvList 기능 구현");
		return mybatis.selectList("RsvDAO.getRsvList", vo);
	}
	
	//chatroom 추가
	public void insetChatroom(RsvVO vo) {
		System.out.println("===>Mybatis로 insertChat 기능 구현");
		mybatis.insert("ChatDAO.insertChatroom", vo); 
	}
}
