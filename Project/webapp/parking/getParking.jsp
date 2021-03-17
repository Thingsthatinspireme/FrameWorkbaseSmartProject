<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
<title>Document</title>
<style>
#cntnr .isp_title {
	width: 100%;
	height: 80px;
	border: 1px solid #ccc;
	box-sizing: border-box;
	margin: 0 0 10px 0;
	text-align: center;
	font-size: 2em;
}

#cntnr .isp_content {
	width: 100%;
	height: 800px;
	border: 1px solid #ccc;
	box-sizing: border-box;
	margin: 0 0 20px 0;
	text-align: center;
}

#short-parking {
	width: 45%;
	height: 150px;
	border: 1px solid red;
	box-sizing: border-box;
	text-align: center;
	line-height: 150px;
	float: left;
}

#long-parking {
	width: 45%;
	height: 150px;
	border: 1px solid blue;
	box-sizing: border-box;
	text-align: center;
	line-height: 150px;
	float: right;
}

#date {
	clear: both;
}

/* 여기부터 */
table.info {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	/* border-top: 1px solid #ccc; */
	margin: 20px 10px;
}

table.info th {
	width: 100px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	text-align: right;
	/* border-bottom: 1px solid #ccc; */
	/* background: #efefef; */
}

table.info td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	/* border-bottom: 1px solid #ccc; */
}

.btn_submit {
	width: 100%;
	color: #fff;
	background-color: #367FFF;
	border-color: #367FFF;
}

#image_container {
	border: solid 1px red;
	width: 100%;
	height: 250px;
	z-index: 999;
}

img {
	margin: 20px;
}
#title_box {
	width: 100%;
	height: 30px;
	font-size: 15px;
}
.radio {
	margin: 0px 0px 0px 20px;
}
</style>
<script src="js/jquery-1.12.4.min.js"></script>
<script>
	function setThumbnail(event) {
		var reader = new FileReader();
		reader.onload = function(event) {
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			img.setAttribute("width", '400px');
			// img.setAttribute('background-size','cover');
			document.querySelector("div#image_container").appendChild(img);
		};
		reader.readAsDataURL(event.target.files[0]);
	}
</script>
</head>

<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div id="cntnr">
		<!-- 각자의 파트는 이곳에서부터 작업하실 수 있습니다. -->

		<div class="cntnr-top-margin"></div>
		<form action="updateParking.do" method="post">
			<div class="gp_content">

				<table class="info">
					<tr>
						<td><input type="hidden" name="parking_type"
							value="${parking.parking_type}"></td>
						<td><input type="hidden" name="owner_id"
							value="${parking.owner_id }"></td>
						<td><input type="hidden" name="parking_id"
							value="${parking.parking_id }"></td>
						<td><input type="hidden" name="parking_deleted"
							value="${parking.parking_deleted }"></td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="parking_title"
							value="${parking.parking_title}" id="title_box"/></td>
					</tr>
					<tr>
						<th>위치</th>
						<td><input type="text" name="parking_location"
							value="${parking.parking_location}" id="title_box"></td>
					</tr>

					<tr>
						<th>가격</th>
						<td><input type="text" name="paring_price"
							value="${parking.parking_price }"></td>
					</tr>
					<tr>
						<th>인 날짜</th>
						<td><input type="text" name="parking_intime"
							value="${parking.parking_intime }"></td>
					</tr>
					<tr>
						<th>아웃 시간</th>
						<td><input type="text" name="parking_outtime"
							value="${parking.parking_outtime }"></td>
					</tr>
					<tr>
						<th>차종</th>
						<td><input type="radio" name="parking_cartype" id="c1"
							value="대형" 
							<c:if test="${parking.parking_cartype eq '대형'}"> checked </c:if> />
							<label for="c1">대형</label> <input type="radio"
							name="parking_cartype" id="c2" value="중형" class="radio"
							<c:if test="${parking.parking_cartype eq '중형'}">checked</c:if> />
							<label for="c2">중형</label> <input type="radio"
							name="parking_cartype" id="c3" value="준중형" class="radio"
							<c:if test="${parking.parking_cartype eq '준중형'}">checked</c:if> />
							<label for="c3">준중형</label> <input type="radio"
							name="parking_cartype" id="c4" value="경차" class="radio"
							<c:if test="${parking.parking_cartype eq '경차'}">checked</c:if> />
							<label for="c4">경차</label> <input type="radio"
							name="parking_cartype" id="c5" value="기타" class="radio"
							<c:if test="${parking.parking_cartype eq '기타'}">checked</c:if> />
							<label for="c5">기타</label> [ ${parking.parking_cartype} ]</td>
					</tr>
					<tr>
						<th>사진</th>
						<td><input type="file" name="uploadFile" accept="image/*"
							onchange="setThumbnail(event);" /></td>
						<!-- <input type="file" >
							accept="image/*" onchange="setThumbnail(event);"></td>
						 -->
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<div id="image_container">
							<img src="D:\finalproject\Where2Park\src\main\webapp\WEB-INF\images\"${parking.parking_pic} id="img">
							</div> <textarea
								id="parking_content" name="parking_content" rows="10" cols="80">${parking.parking_content}</textarea>
						</td>
					</tr>
					<tr>
						<th></th>
						<td><input type="submit" class="btn_submit" value="수정하기">
						</td>

					</tr>
				</table>
			</div>
		</form>


	</div>
	<!-- 각자의 파트는 이곳까지 작업해주시면 되겠습니다. -->
	<jsp:include page="../tail.jsp"></jsp:include>
</body>

</html>