<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.where2park.biz.reservation.RsvVO"%>
<%@ page import="com.where2park.biz.reservation.impl.RsvDAOMybatis"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">

<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/415f6f6023.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="css/My-page-reservation.css">
<title>어따세워: 예약 내역</title>
<style>
</style>
</head>

<body>
	<div id="cntnr">
		<div class="cntnr-top-margin"></div>
		<p class="mp-title">예약 내역</p>
		<!-- 각자의 파트는 이곳에서부터 작업하실 수 있습니다. -->
		<c:forEach var="rsv" items="${RsvList}">
			<div class="MpRsv-arti">
				<a href="getRsv.do?rsv_id=${rsv.rsv_id}"><div class="mp-rsv-info">
					<p class="mp-rsv-p mp-rsv-date"><fmt:formatDate var="rsvInDt" value="${rsv.rsv_intime}"
							pattern="MM월 dd일  HH시 mm분  "/>
						${rsvInDt} <span style="color: blue;">대여</span></p>
					<p class="mp-rsv-p mp-rsv-time">
						 <fmt:formatDate var="rsvOutDt" value="${rsv.rsv_outtime}"
							pattern="MM월 dd일  HH시 mm분 "/> ${rsvOutDt} <span style="color: red;">반납</span>
					</p>
					<p class="mp-rsv-p mp-rsv-address">서울특별시 동작구 흑석동 184-19
						${rsv.rsv_id}에서 조인ㅋ</p>
				</div></a>
				<div class="mp-rsv-btns">
					<a href="deleteRsv.do?rsv_id=${rsv.rsv_id}"><div
							class="mp-rsv-btn mp-rsv-btn-cancle">예약 취소하기</div></a>
					<div class="mp-rsv-btn mp-rsv-btn-chat">
					<a href="chatroom.do?rsv_id=${rsv.rsv_id}" onClick="window.open(this.href, '', 'width=350, height=400'); return false;">
						상담하기</a>
					</div>
				</div>
			</div>
		</c:forEach>

		<!-- 
        <div class="MpRsv-arti">2</div>
        <div class="MpRsv-arti">3</div>
        <div class="MpRsv-arti">4</div>
         -->
		<!-- 각자의 파트는 이곳까지 작업해주시면 되겠습니다. -->
	</div>
</body>
<%@ include file="../tail.jsp"%>
</html>