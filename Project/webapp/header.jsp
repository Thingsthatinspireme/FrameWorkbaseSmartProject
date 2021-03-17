<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/415f6f6023.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	
	<title>header</title>
	
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
            background:url("../LOGO.png") no-repeat;
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
        #cntnr .cntnr-top-margin{
            width:100%;
            height:40px;
        }
        #cntnr .article{
            width:100%;
            height:200px;
            border:1px solid #ccc;
            box-sizing:border-box;
            margin:0 0 20px 0;
        }
	</style>
</head>
<body>
	<div id="hdr">
        <div class="hdr-logo"><a href="index.jsp"></a>
</div>
        <div id="nav">
            <ul>
                <li><a href="#">로그인 · 회원가입</a></li>
                <li><a href="/Where2Park/parking/selectParkingType.jsp">내 주차장 공유하기</a></li>
                <li><a href="#">장기주차</a></li>
                <li><a href="#">단기주차</a></li>
            </ul>
        </div>
    </div>
</body>
</html>