<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file = "../header.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/My-page-reservation.css">
    <title>Reservation DAO Test Page</title>
    <style>


    </style>
</head>

<body>
    <div id="cntnr">
        <div class="cntnr-top-margin"></div>
        <p class="mp-title">예약 보기</p>
        <div class="MpRsv-arti">
        <form action="updateRsv.do" method="post">
            <input name="rsv_id" type="hidden" value="${rsv.rsv_id}" />
            <table id="rsv_info" border="0" cellpadding="10" cellspacing="10">
                <tr>
                    <!-- <td width="70">날짜</td> -->
                    <td align="left">${rsv.rsv_intime}</td>
                </tr>
                <tr>
                    <!-- <td>시간</td> -->
                    <td align="left">${rsv.rsv_intime} - ${rsv.rsv_outtime}</td>
                </tr>
                <tr>
                    <!-- <td>파킹보드 제목</td> -->
                    <td align="left">${parking.parking_title}</td>
                </tr>
                <tr>
                    <!-- <td>시간당 주차 요금</td> -->
                    <td align="left">${parking.parking_price}</td>
                </tr>
                <tr>
                    <!-- <td>이용 시간</td> -->
                    <td align="left">${rsv_outtime}</td>
                </tr>
                <tr>
                    <!-- <td>결제 금액</td> -->
                    <td align="left">${rsv.rsv_price}</td>
                </tr>

            </table>
<div id="optional-info">
    <h1>이용자 및 차량정보</h1>
    <h2>닉네임</h2>
    <input type="text" readonly value="${user.user_nick}"><br>
    <h2>전화번호</h2>
    <input type="text" value="${user.user_phone}"><br>
    <h2>차종</h2>
    <input type="radio" name="parking_cartype" id="c1"
    value="대형"> <label for="c1">대형</label> <input
    type="radio" name="parking_cartype" id="c2" value="중형"
    class="radio"> <label for="c2">중형</label> <input
    type="radio" name="parking_cartype" id="c3" value="준중형"
    class="radio"> <label for="c3">준중형</label> <input
    type="radio" name="parking_cartype" id="c4" value="경차"
    class="radio"> <label for="c4">경차</label> <input
    type="radio" name="parking_cartype" id="c5" value="기타"
    class="radio"> <label for="c5">기타</label>
    <h2>차번호</h2>
    <input type="text" placeholder="12가 3456"><br>
</div>
    <input type="submit" value="글 수정" /> <!--예약업데이트가 아니라 회원정보가 업뎃되는거아님?-->

        </form>
        </div>
        <a href="deleteRsv.do?id=${rsv.rsv_id}">예약 취소</a>&nbsp;&nbsp;&nbsp;
        <a href="getRsvList.do">예약 내역으로 돌아가기</a>
    </div>
    <hr>

</body>
<%@ include file = "../tail.jsp" %>
</html>