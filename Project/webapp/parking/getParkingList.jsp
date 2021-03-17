<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>
<script src="js/jquery-1.12.4.min.js"></script>
<meta charset="UTF-8">
<title>글목록</title>
<style>
/*마진*/
#cntnr .border-margin {
	width: 100%;
	height: 20px;
}

/*설정*/
#cntnr .border {
	width: 100%;
	height: 150px;
	box-sizing: border-box;
	margin: 0 0 20px 0;
	padding: 10px 10px 10px 10px;
	border-radius: 20px 20px 20px 20px;
	background-color: rgb(243, 243, 243);
	box-shadow: 5px 5px rgb(151, 151, 151);
	cursor: pointer;
	position: relative;
}

#cntnr #border-info {
	width: 50%;
	float: left;
	height: 140px;
}

#cntnr .border-btn {
	height: 120px;
	width: 40%;
	/*border:solid 1px;*/
	float: right;
}

#cntnr .border-btn #border-btn-detail {
	/*border: solid 1px black;*/ 
	width: 22%;
	height: 50px;
	float: right;
	text-align: right;
	z-index: 999;
	position: absolute;
	left: 75%;
	
}

#cntnr .border-btn #border-btn-res {
	clear: both;
	border: solid 1px 367FFF;
	width: 30%;
	height: 35px;
	background-color: #367FFF;
	color: white;
	float: left;
	text-align: center;
	border-radius: 5px 5px 5px 5px;
	line-height: 33px;
	margin-top: 10%;
}

#cntnr .border-btn #border-btn-upd {
	border: solid 1px 367FFF;
	width: 30%;
	height: 35px;
	background-color: #367FFF;
	color: white;
	float: left;
	text-align: center;
	border-radius: 5px 5px 5px 5px;
	margin-left: 7%;
	line-height: 33px;
	margin-top: 10%;
}
#cntnr .border-btn #border-btn-ori {
	border: solid 1px 367FFF;
	width: 50%;
	height: 35px;
	background-color: #367FFF;
	color: white;
	float: left;
	text-align: center;
	border-radius: 5px 5px 5px 5px;
	margin-left: 7%;
	line-height: 33px;
	margin-top: 10%;
}

#notice-title {
	font-size: 1.5em;
}

.menu a {
	cursor: pointer;
	text-decoration: none;
}

.menu .hide {
	display: none;
}

ul {
	width: 100%;
	float: right;
	clear: both;
	list-style: none;
}


.menu {
	list-style: none;
	/* float: right; */
}

.menu a {
	text-align: right;
}

.sub_menu {
	background-color: white;
	color: black;
	float: left;
	border: solid 1px #367FFF;
	width: 80px;
	height: 24px;
	border-radius: 3px 3px 3px 3px;
	cursor: pointer;
	margin-left: 5%;
	text-align: center;
}

a {
	text-decoration: none
}

#border-btn-res a:hover {
	text-decoration: underline;
	color: white;
	cursor: pointer;
}
#border-btn-upd a:hover {
	text-decoration: underline;
	color: white;
	cursor: pointer;
}
#border-btn-ori a:hover {
	text-decoration: underline;
	color: white;
	cursor: pointer;
}

#border-title {
	font-weight: bold;
}
</style>


<script>

	$(document).ready(function() {
		clickshow();
		clickdelete();
		
	})
	
	// 내리기 , 삭제 버튼 보이기
	function clickshow() {
		$(".menu>a").click(function() {
			$(this).next("ul").toggleClass("hide");
		})
	}
	
	// 삭제버튼시 한번더 확인
	function clickdelete(){
		$("#click_delete").click(function(){
			alert("삭제하시면 게시글을 다시 공유하거나 볼수없습니다.")
		})
	}
</script>

</head>

<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div id="cntnr">
		<div class="border-margin"></div>

		<c:forEach var="parking" items="${parkingList}">
			<c:if test="${parking.parking_deleted eq '0'}">
				<div class="border">
					<div id="border-info">
						[ 공유중 ] <br/>
						${parking.parking_id } </br> 
						
						
							
						${parking.parking_intime }~${parking.parking_outtime } </br> ${parking.parking_type }
						${parking.parking_price }원

						<p id="border-title">${parking.parking_title}</p>
						<br>


					</div>
					<div class="border-btn">



						<div id="border-btn-detail">
							<li class="menu"><a><img src="" />▪▪</a>
								<ul class="hide">
									<li class="sub_menu"><a
										href="updateParking_down.do?parking_id=${parking.parking_id }">내리기</a>
									</li>
									<li class="sub_menu" id="click_delete"><a
										href="updateParking_deleted.do?parking_id=${parking.parking_id }">삭제하기</a>

									</li>
								</ul></li>


						</div>



						<div id="border-btn-res">
							<a href="#">예약보기</a>
						</div>
						<div id="border-btn-upd">
							<a href="getParking.do?parking_id=${parking.parking_id }">수정하기</a>
						</div>

					</div>
				</div>
			</c:if>
		</c:forEach>

		<div class="border-margin"></div>
		<div class="border-margin"></div>
		<div class="border-margin"></div>

		<c:forEach var="parking" items="${parkingList}">
			<c:if test="${parking.parking_deleted eq '1'}">
				<div class="border">
					<div id="border-info">
						[ 내린글 ] <br/>
						${parking.parking_id } </br> ${parking.parking_intime } ~
						${parking.parking_outtime } </br> ${parking.parking_type }
						${parking.parking_price }원

						<p id="border-title">${parking.parking_title}</p>
						<br>


					</div>
					<div class="border-btn">
						<div id="border-btn-ori">
							<a href="updateParking_ori.do?parking_id=${parking.parking_id }">다시공유하기</a>
						</div>

					</div>
				</div>
				</c:if>
		</c:forEach>


		<!-- 각자의 파트는 이곳까지 작업해주시면 되겠습니다. -->
	</div>
	<jsp:include page="../tail.jsp"></jsp:include>
</body>

</html>