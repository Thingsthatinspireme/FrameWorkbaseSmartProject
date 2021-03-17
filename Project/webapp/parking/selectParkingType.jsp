<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<title>Document</title>

<style>
#cntnr .bs-title {
	width: 100%;
	height: 50px;
	/*border: 1px solid #ccc;*/
	box-sizing: border-box;
	text-align: center;
	font-size: 30px;
	font-weight: bold;
}

#cntnr .bs-subtitle {
	width: 100%;
	height: 150px;
	/*border: 1px solid #ccc;*/
	box-sizing: border-box;
	text-align: center;
	font-size: 20px;
}

#cntnr .bs-content {
	width: 100%;
	height: 200px;
	/*border: 1px solid #ccc;*/
	box-sizing: border-box;
	margin: 0 0 20px 0;
	text-align: center;
	font-size: 18px;
}

#short-parking {
	width: 30%;
	height: 150px;
	border: 2px solid rgb(255, 115, 0);
	box-sizing: border-box;
	text-align: center;
	line-height: 150px;
	float: left;
	margin: 5% 2% 5% 10%;
	border-radius: 20px 20px 20px 20px;
	background-color: rgba(240, 131, 8, 0.952);
	box-shadow: 0 2px 4px rgba(154, 223, 185, 0.849);
	cursor: pointer;
	color: white;
	font-size: 25px;
}

.bs-select a:hover {
	text-decoration: underline;
	color: white;
	cursor: pointer;
	font-size: larger;
}

#long-parking {
	width: 30%;
	height: 150px;
	border: 1px solid blue;
	box-sizing: border-box;
	text-align: center;
	line-height: 150px;
	float: right;
	margin: 5% 10% 5% 2%;
	border-radius: 20px 20px 20px 20px;
	background-color: rgba(82, 98, 241, 0.952);
	box-shadow: 0 2px 4px rgba(154, 223, 185, 0.849);
	cursor: pointer;
	color: white;
	font-size: 25px;
}

#date {
	clear: both;
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>

	<div id="cntnr">
		<!-- 각자의 파트는 이곳에서부터 작업하실 수 있습니다. -->
		<div class="cntnr-top-margin"></div>


		<div class="bs-title">
			<h1>내 주차장 내놓기</h1>
		</div>
		<div class="bs-subtitle">
			<br /> <br />
			<h2>어따세워와 함께</h2>
			<h2>빈 공간을 새로움으로 채우세요</h2>
		</div>
		<div class="bs-content">
			<br />
			<h2>주의사항</h2>
			<p>주의사항주의사항주의사항주의사항주의사의사항주항주의사항주의사항주의사항</p>
			<p>주의사항주의사항주의사항주의사항주의사사항주항주의사항주의사항주의사항</p>
			<p>주의사항주의사항주의사항주의사항주의사항주주항주의사항주의사항주의사항</p>
		</div>
		<div class="bs-select">

			<div id="short-parking">
				<a href="../insertShortParking.jsp">단기주차</a>
			</div>
			<div id="long-parking">
				<a href="../getParkingList.do">장기주차</a>
			</div>

		</div>

	</div>
	<!-- 각자의 파트는 이곳까지 작업해주시면 되겠습니다. -->
	<jsp:include page="../tail.jsp"></jsp:include>
</body>
</html>