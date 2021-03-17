<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <title>어따세워?</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            list-style-type: none;
            text-decoration: none;
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 1em;
            font-weight: 300;
            color: #000;
        }

        body {
            width: 100%;
            height: auto;
           /* body에 스타일링을 지양해주십시오. */
        }

        #hdr {
            width: 100%;
            min-height: 150px;
            height: auto;
            box-sizing: border-box;
            padding: 0 50px 0 40px;
            box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        #hdr .hdr-logo {
            width: 150px;
            height: 150px;
            background: url("LOGO.png") no-repeat;
            background-size: cover;
            float: left;
        }

        #hdr #nav {
            float: right;
        }

        #hdr #nav ul {
            float: right;
        }

        #hdr #nav li {
            float: right;
            padding: 0px 20px;
            line-height: 150px;
        }

        #cntnr {
            clear: both;
            width: 60%;
            min-height: 600px;
            height: auto;
            margin: 0 auto;
        }

        #cntnr .cntnr-top-margin {
            width: 100%;
            height: 40px;
        }

        #ftr {
            width: 100%;
            min-height: 200px;
            height: auto;
            background: #eee;
            font-size: 0.8em;
            line-height: 2em;
        }

        #ftr .wrapper {
            width: 60%;
            min-height: 200px;
            height: auto;
            margin: 0 auto;
        }

        #ftr .wrapper #ftr-nav {
            height: 50px;
        }

        #ftr .wrapper #ftr-nav ul {
            float: left;
        }

        #ftr .wrapper #ftr-nav ul li {
            padding: 20px 20px 15px 20px;
            float: left;
        }

        #ftr .wrapper #ftr-nav ul li:first-child {
            padding: 20px 20px 15px 0px;
        }

        #ftr .wrapper .ftr-arti {
            clear: both;
        }

        #ftr .wrapper .ftr-arti p {
            padding: 0 0 10px 0;
        }

         /* main-margin 공백*/
        .main-margin {
            height: 50px;
        }

         /* MainPage 검색창 부분*/
        .main-search {
            background-color: #367FFF;
            height: 400px;
            padding: 190px 20% 190px 20%;
            box-sizing: border-box;
        }

        .main-wrapper {
            width: 100%;
        }
        .search-type {
            float: left;
            width: 29%;
            margin: 0 3px 0 3px;
        }

        .search-type input {
            height: 20px;
            min-width: 180px;
            width: 100%;
            margin : 0;
            
        }

        #search-button {
            width: 9%;
            margin: 22px 5px 22px 5px;
            float: right;
        }

        /*추천 알고리즘*/

        #cntnr .recommendation {
            width: 100%;
            height: 350px;
            /*border: 1px solid #ccc;*/
            box-sizing: border-box;
            margin: 0 0 20px 0;
        }

        .recommendation-title {
            font-size: 1.5em;
            font-weight: bold;
            text-align: center;

        }

        .recommendation-box {
            width: 30%;
            min-height: 240px;
            border: 1px solid #333;
            margin: 0 5% 0 0;
            float: left;
            box-sizing: border-box;
        }

        .recommendation-box:last-child{
            margin: 0;
        }
    </style>
    <script src="js/jquery-1.12.4.min.js"></script>
    <script>
        function noneClickCalender(){
           var today = new Date();
           document.write(today)

           var choice =  document.getElementsByClassName("calender")[0].value
           console.log(choice)
        }
    </script>
</head>

<body>
    <div id="hdr">
        <div class="hdr-logo"></div>
        <div id="nav">
            <ul>
                <li><a href="#">로그인 · 회원가입</a></li>
                <li><a href="parking/selectParkingType.jsp">내 주차장 공유하기</a></li>
                <li><a href="#">장기주차</a></li>
                <li><a href="#">단기주차</a></li>
            </ul>
        </div>
    </div>
    <div class="main-margin"></div>-
    <div class="main-search">
        <div class="main-wrapper">
            <form action="getSearchParkingList.do" method="post" >
                <div class="search-type">
                    	장소 검색
                    <input type="text" name="parking_location" value="${parkingVO.parking_location}" />
                </div>
                <div class="search-type">
                    	대여 시각
                    <input type="datetime-local" class="calender" name="parking_intime" value="${parkingVO.parking_intime}" />
                </div>
                <div class="search-type">
                    	반납 시각
                    <input type="datetime-local" class="calender" name="parking_outtime" value="${parkingVO.parking_outtime}" />
                </div>
                <input id="search-button" type="submit" value="검색하기">
            </form>
        </div>
    </div>
    <div class="main-margin"></div>
    <div id="cntnr">
        <!-- 각자의 파트는 이곳에서부터 작업하실 수 있습니다. -->
        <div class="cntnr-top-margin"></div>
        <div class="recommendation">
            <p class="recommendation-title">사용자 위치 기반 추천 주차장 목록</p>
            <div class="main-margin"></div>
            <div class="recommendation-box">

            </div>
            <div class="recommendation-box">

            </div>
            <div class="recommendation-box">

            </div>
        </div>
        <!-- 각자의 파트는 이곳까지 작업해주시면 되겠습니다. -->
    </div>
    <div id="ftr">
        <div class="wrapper">
            <div id="ftr-nav">
                <ul>
                    <li><a href="#">이용약관</a></li>
                    <li><a href="#">회사소개</a></li>
                    <li><a href="#">개인정보 처리방침</a></li>
                    <li><a href="#">위치기반 서비스 이용약관</a></li>
                    <li><a href="#">안심운영정책</a></li>
                </ul>
            </div>
            <div class="ftr-arti">
                <p>｜ 상호 : ㈜어따세워 ｜ 대표 : 문상환 ｜ 사업자등록번호 : 210-42-10003<br> ｜ 주소 : 서울특별시 마포구 신수동 63-14 거구장 지층 비트캠프 신촌센터
                    5호<br> ｜ 전화 : 02-3486-9600 ｜ 팩스 : 02-6007-1245 ｜ 통신판매업 신고번호 : 제 서초-00098호</p>
                <p>Copyright © 어따세워. All Rights Reserved.</p>
            </div>
        </div>
    </div>
</body>

</html>