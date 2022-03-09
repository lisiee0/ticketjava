<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/assets/jquery/venues/sejong2.js"></script>

<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/seat.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation2.css" rel="stylesheet" type="text/css">

</head>

<body>
	<div id="containerBody">
		
		<div id="header">
			<h1><a href="">예매페이지로 이동</a></h1>
		</div>
		
		<div id="menubar">
			<ul class="clearfix">
				<li>취소표 알림 서비스</li>
			</ul>
		</div>
		
		<div id="main">
			<div id="prodInfo">
				<table>
					<colgroup>
						<col style="width:45%">
						<col style="">
						<col style="width:25%">
					</colgroup>
					<tr>
						<td><h2>뮤지컬 라이온 킹</h2></td>
						<td id="theaterName" class="right">세종문화회관 1관 세종문화회관 1관</td>
						<td class="right">2022년 03월 10일 15:00</td>
					</tr>
				</table>
			</div>
			<div id="seatPlan">
				<!-- <img src="C:\JavaStudy\upload\seat.jpg" alt="이미지 없음">  --> <!-- html 코드 -->
				
				<div id="seatPlanDiv">
					<div id="stageArea">stage</div>
					<table>
						<tbody id="seatArea">
							
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
		<div id="side">
			<div id="tabOption">
				<ul class="nav nav-tabs">
					<li class="nav item"><button class="btn-outline-primary">알림 신청</button></li>
					<li class="nav item"><button class="btn-primary">나의 신청</button></li>
				</ul>
			</div>
				
			<div id="section"> 
				<h2>선택 구역</h2>
				<p>A, B, C</p>
			</div>
			
			<div id="interval">
				<h2>알림 간격</h2>
				<p>10분</p>
			</div>
			
			<div id="count">
				<h2>알림 횟수</h2>
				<p>10회</p>
			</div>
			
			<div id="button">
				<button class="btn-primary">알림 취소</button>
			</div>
		</div>
		
	</div>

</body>


</html>