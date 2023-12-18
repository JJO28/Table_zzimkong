<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/global.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/admin_article.css" rel="stylesheet">
<%-- <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet"> --%>
<script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.1/dist/chart.umd.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/chart_script.js"></script>
</head>
<body id="body">
	<header>
		<jsp:include page="../inc/admin_top.jsp"/>
	</header>
    
	<section class="article">
		<div class="text">
			<h3>오늘 할 일</h3>
			<table border="1">
				<tr>
					<th>문의 답변 대기</th>
					<th>입점 승인 대기</th>
					<th>리뷰 처리 대기</th>
				</tr>
				<tr>
					<td>22건</td>
					<td>24건</td>
					<td>50건</td>
				</tr>
			</table>
			
			<h3>사이트 현황</h3>
			<table border="1">
				<tr>
					<th>오늘 방문자 수</th>
					<th>오늘 가입자 수</th>
					<th>오늘 예약 수</th>
				</tr>
				<tr>
					<td>22명</td>
					<td>24명</td>
					<td>50건</td>
				</tr>
			</table>
			
			<br>
		

	
			<%-- Chart.js --%>
			<h3>방문&가입자 현황</h3>

			<button type="button" id="chart_time" onclick="myChart1()" >시간별</button>
			<button type="button" id="chart_date" onclick="myChart2()">날짜별</button>

			<table class="chart_table">
				<tr>
					<th>
						<br>
						
 						<div id="content1" style="display: none;">
							<div style="width: 100%; height: auto; text-align: center">
								<canvas id="myChart"></canvas>
							</div>
						</div>
						
 						<div id="content2" style="display: none;">
							<div style="width: 100%; height: auto; text-align: center">
								<canvas id="myChart2"></canvas>
							</div>
						</div>
					</th>
				</tr>
			</table>
			
			
			<h3>예약자 현황</h3>
			<button type="button" id="chart_time" onclick="myChart3()">시간별</button>
			<button type="button" id="chart_date" onclick="myChart4()">날짜별</button>
			
			<table class="chart_table">
				<tr>
					<th>
						<br>
						
 						<div id="content3" style="display: none;">
							<div style="width: 100%; height: auto; text-align: center">
								<canvas id="myChart3"></canvas>
							</div>
						</div>
						
 						<div id="content4" style="display: none;">
							<div style="width: 100%; height: auto; text-align: center">
								<canvas id="myChart4"></canvas>
							</div>
						</div>
					</th>
				</tr>
			</table>
			
			
		</div>
	</section>
		
	<%-- 상단으로/bottom --%>
	<footer>
		<jsp:include page="../inc/admin_topup.jsp"/>
		<jsp:include page="../inc/bottom_main.jsp"/>
	</footer>
</body>
</html>