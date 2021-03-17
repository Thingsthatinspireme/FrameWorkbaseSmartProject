<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
h2{
	font-weight:bold;
}
#cntnr .isp_title {
	width: 100%;
	height: 80px;
	/*border: 1px solid #ccc;*/
	box-sizing: border-box;
	margin: 0 0 10px 0;
	text-align: center;
	font-size: 2em;
}

#cntnr .isp_content {
	width: 100%;
	height: 1200px;
	/*border: 1px solid #ccc;*/
	box-sizing: border-box;
	margin: 0 0 20px 0;
	text-align: center;
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
	width: 30%;
	padding: 10px 40px 0px 0px;
	font-weight: bold;
	vertical-align: top;
	text-align: right;
	/* border-bottom: 1px solid #ccc; */
	/* background: #efefef; */
}

table.info td {
	width: 100%;
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
	border: solid 1px black;
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
	<jsp:include page="header.jsp"></jsp:include>
	<div id="cntnr">

		<!-- 각자의 파트는 이곳에서부터 작업하실 수 있습니다. -->

		<div class="cntnr-top-margin"></div>

		<form action="insertParking.do" method="post"
			enctype="multipart/form-data">
			<div class="isp_title">
				<h2>내 주차장 내놓기 "단기"</h2>
			</div>
			<div class="isp_content">
				<input type="hidden" name="parking_type" value="단기"> <input
					type="hidden" name="parking_deleted" value="0"> <input
					type="hidden" class="owner_id" name="owner_id" value="13166">

				<table class="info">
					<tr>
						<th>제목</th>
						<td><input type="text" class="parking_title"
							placeholder="ex)서강대역 도보 1분 다양한 차종 주차 가능합니다~!" name="parking_title" maxlength="80"
							id="title_box"></td>
					</tr>
					<tr>
						<th>위치</th>
						<td><input type="text" class="parking_location"
							name="parking_location" maxlength="80" id="title_box"></td>
					</tr>

					<tr>
						<th>가격</th>
						<td><input type="number" class="parking_price"
							name="parking_price" maxlength="50"></td>
					</tr>
					<tr>
						<th>인 날짜</th>
						<td><input type="datetime-local" class="parking_intime"
							name="parking_intime"></td>
					</tr>
					<tr>
						<th>아웃 날짜</th>
						<td><input type="datetime-local" class="parking_outtime"
							name="parking_outtime">
					</tr>
					<tr>
						<th>차종</th>
						<td><input type="radio" name="parking_cartype" id="c1"
							value="대형"> <label for="c1">대형</label> <input
							type="radio" name="parking_cartype" id="c2" value="중형"
							class="radio"> <label for="c2">중형</label> <input
							type="radio" name="parking_cartype" id="c3" value="준중형"
							class="radio"> <label for="c3">준중형</label> <input
							type="radio" name="parking_cartype" id="c4" value="경차"
							class="radio"> <label for="c4">경차</label> <input
							type="radio" name="parking_cartype" id="c5" value="기타"
							class="radio"> <label for="c5">기타</label></td>
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
						<th></th>
						<th></th>
					</tr>
					<tr>
						<th>내용</th>
						<td>
						<div id="image_container"></div>
						<textarea id="parking_content" name="parking_content"
								rows="20" cols="80"></textarea></td>
					</tr>
					<tr>
						<th></th>
						<td><input type="submit" class="btn_submit" value="등록하기">
						</td>

					</tr>
				</table>

			</div>

		</form>



		<!-- 각자의 파트는 이곳까지 작업해주시면 되겠습니다. -->
	</div>
	<jsp:include page="tail.jsp"></jsp:include>
</body>

</html>