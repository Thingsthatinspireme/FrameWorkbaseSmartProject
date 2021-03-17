<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">

    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/415f6f6023.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>

    <link rel="stylesheet" type="text/css" href="../css/My-page-review.css">

	<meta charset="UTF-8">
	<title>review</title>
	
	
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div id="cntnr">
    	<div class="cntnr-top-margin"></div>
    	<p class="mp-title">리뷰 쓰기</p>
    	<!-- 각자의 파트는 이곳에서부터 작업하실 수 있습니다. -->
     	<form class="MpReview-arti" action="">
        	<p class="mp-rev-p-info mp-rev-date">2021년 2월 25일 15:30 ~ 17:30</p>
        	<p class="mp-rev-p-info mp-rev-p-title">광장시장 근처 개인 주차공간</p>
         	<p class="mp-rev-p-info mp-rev-star-rate">평점&nbsp;&nbsp;
            	<input type="checkbox" name="star-rating" value="1" class="rtng" id="rtng1" title="1"><label for="rtng1"><i class="fas fa-star"></i></label>
            	<input type="checkbox" name="star-rating" value="2" class="rtng" id="rtng2" title="2"><label for="rtng2"><i class="fas fa-star"></i></label>
            	<input type="checkbox" name="star-rating" value="3" class="rtng" id="rtng3" title="3"><label for="rtng3"><i class="fas fa-star"></i></label>
            	<input type="checkbox" name="star-rating" value="4" class="rtng" id="rtng4" title="4"><label for="rtng4"><i class="fas fa-star"></i></label>
            	<input type="checkbox" name="star-rating" value="5" class="rtng" id="rtng5" title="5"><label for="rtng5"><i class="fas fa-star"></i></label>
        	</p>
        	<textarea name="" id="" cols="60" rows="10" class="rev-ta" placeholder="부적절한 내용의 게시 혹은 올바르지 못한 내용 기재 시 해당 게시물은 사전경고 없이 삭제될 수 있습니다.&#13;&#10;이용하신 주차공간에 대한 소감을 남겨주세요."></textarea>
        	<input type="submit" name="" class="rev-btn" value="등록하기">
    	</form>
    	<!-- 각자의 파트는 이곳까지 작업해주시면 되겠습니다. -->
   	</div>
	<jsp:include page="../tail.jsp"></jsp:include>
</body>
</html>