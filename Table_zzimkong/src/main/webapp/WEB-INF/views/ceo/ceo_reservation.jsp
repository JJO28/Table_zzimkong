<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- 글로벌 css --%>
<link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet">
<%-- 본문 css --%>
<link href="${pageContext.request.contextPath }/resources/css/article_style.css" rel="stylesheet">
<%-- 팝업창 js --%>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/ceo_detaile.js"></script>

</head>
<body>
	<header>
		<jsp:include page="../inc/ceo_top.jsp"/>
	</header>
	<section class="article">
		<div class="text">
			<h3>예약자</h3>
			
			<table border="1">
				<tr>
					<th>업체명</th>
					<th>예약번호</th>
					<th>회원번호</th>
					<th>예약날짜</th>
					<th>방문시간</th>
					<th>방문인원</th>
					<th>예약금</th>
					<th>선주문금액</th>
					<th>예약메뉴</th>
					<th>방문자 성명</th>
					<th>방문자 연락처</th>
					<th>취소여부</th>
					<th>예약완료시간</th>
				</tr>
				<tr>
					<td>voyage bistro</td>
					<td>res1fvm2</td>
					<td>12</td>
					<td>12월 25일</td>
					<td>17시</td>
					<td>2명</td>
					<td>20,000원</td>
					<td>125,000원</td>
					<td>서테이크/파스타/샐러드</td>
					<td>이재환</td>
					<td>010-1111-1111</td>
					<td></td>
					<td>now()</td>
				</tr>
			</table>
			
			<div class="text_div">
				<span><h3>오늘의 예약 현황</h3></span>
				<span>
					<button type="button" value="상세정보" class="popup" onclick="newDetails()">상세정보</button>
				</span>
			</div>
			<table border="1">
				<tr>
					<th>오늘의 예약 수</th>
					<th>오늘의 예약방문자 수</th>
					<th>오늘의 예약취소 수</th>
				</tr>
				<tr>
					<td>8건</td>
					<td>22명</td>
					<td>1건</td>
				</tr>
			</table>
			
			<br>
			
			<h3>월간 예약 현황</h3>
			<table border="1">
				<tr>
					<th>월간 예약 수</th>
					<th>월간 예약방문자 수</th>
					<th>월간 예약취소 수</th>
				</tr>
				<tr>
					<td>194건</td>
					<td>582명</td>
					<td>13건</td>
				</tr>
			</table>
			
			<br>
			
			
		</div>
	</section>
	<%-- <footer>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</footer> --%>
</body>
<!-- <script type="text/javascript"> -->


<!-- // 	function newDetails(){ -->
<!-- // 		window.open("com_main_detaile.jsp", "address_window", "width = 700, height = 800"); -->
<!-- // 	} -->
	

<!-- </script> -->
</html>