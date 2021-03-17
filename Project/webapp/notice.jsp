<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <title>알림창</title>
    <style>
        *{
            margin:0;
            padding:0;
            list-style-type:none;
            text-decoration:none;
            font-family: 'Noto Sans KR', sans-serif;
            font-size:1em;
            font-weight:300;
            color:#000;
        }
        body{
            width:100%;
            height:auto;
            /* body에 스타일링을 지양해주십시오. */
        }
        #hdr{
            width:100%;
            min-height:150px;
            height:auto;
            box-sizing:border-box;
            padding:0 50px 0 40px;
            box-shadow:1px 1px 5px rgba(0, 0, 0, 0.1);
            overflow:hidden;
        }
        #hdr .hdr-logo{
            width:150px;
            height:150px;
            background:url("LOGO.png") no-repeat;
            background-size:cover;
            float:left;
        }
        #hdr #nav{
            float:right;
        }
        #hdr #nav ul{
            float:right;
        }
        #hdr #nav li{
            float:right;
            padding:0px 20px;
            line-height:150px;
        }
        #cntnr{
            clear:both;
            width:60%;
            min-height:800px;
            height:auto;
            margin:0 auto;
        }


        #ftr{
            width:100%;
            min-height:200px;
            height:auto;
            background:#eee;
            font-size:0.8em;
            line-height:2em;
        }
        #ftr .wrapper{
            width:60%;
            min-height:200px;
            height:auto;
            margin:0 auto;
        }
        #ftr .wrapper #ftr-nav{
            height:50px;
        }
        #ftr .wrapper #ftr-nav ul{
            float:left;
        }
        #ftr .wrapper #ftr-nav ul li{
            padding:20px 20px 15px 20px;
            float:left;
        }
        #ftr .wrapper #ftr-nav ul li:first-child{
            padding:20px 20px 15px 0px;
        }
        #ftr .wrapper .ftr-arti{
            clear:both;
        }
        #ftr .wrapper .ftr-arti p{
            padding:0 0 10px 0;
        }

        
        /*알림창 마진*/
        #cntnr .notice-margin{
            width:100%;
            height:20px;
        }

        /*새로고침 버튼*/
        .refresh{
            width:100%;
            height:40px;
        }

        .refresh a img {
            width : 40px;
            height : 40px;
            float: right;
            
        }

        /*알림창 설정*/
        #cntnr .notice {
            width:100%;
            height: 150px;
            box-sizing:border-box;
            margin:0 0 20px 0;
            padding: 10px 10px 10px 10px;
            border-radius: 20px 20px 20px 20px;
            background-color: rgb(243, 243, 243);  
            box-shadow: 5px 5px rgb(151, 151, 151);
            cursor: pointer;
        }

        #notice-title {
            font-size: 1.5em;
        }
    </style>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <div id="cntnr">
        <div class="notice-margin"></div>
        <!-- 각자의 파트는 이곳에서부터 작업하실 수 있습니다. -->
        <div class="refresh">
            <a onClick="window.location.reload()" style="cursor: pointer;">
                <img src="Refresh.png"/>
            </a>
        </div>
        <div class="notice-margin"></div>
        <div class="notice">
            <p id="notice-title">
                    알림제목1
            </p>
            <br>
            <p id="notice-content">
                알림 내용입니다.
            </p>
        </div>
        <div class="notice-margin"></div>
        <div class="notice">
            <p id="notice-title">
                    알림제목2
            </p>
            <br>
            <p id="notice-content">
                알림 내용입니다.
            </p>
        </div>
        <div class="notice-margin"></div>
        <div class="notice">
            <p id="notice-title">
                    알림제목3
            </p>
            <br>
            <p id="notice-content">
                알림 내용입니다.
            </p>
        </div>

        <!-- 각자의 파트는 이곳까지 작업해주시면 되겠습니다. -->
    </div>
    <jsp:include page="tail.jsp"></jsp:include>
</body>
</html>