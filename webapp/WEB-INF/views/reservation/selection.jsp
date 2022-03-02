<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<!-- <script src="assets/bootstrap/js/sejong1.js"></script> -->
<script src="${pageContext.request.contextPath}/assets/jquery/venues/sejong2.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/seat.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation1.css" rel="stylesheet" type="text/css">



</head>

<body>

	<div id="containerBody">
		
		<div id="header">
			<h1>티켓자바 예매</h1>
		</div>
		
		<div id="menubar">
			<ul class="clearfix">
				<li id="curMenu">등급/좌석선택</li>
				<li>할인/매수선택</li>
				<li>예매확인</li>
				<li id="lastMenu">결제</li>
			</ul>
		</div>
		
		
		
		<div id="main">
			<h2>뮤지컬 라이온 킹</h2>
							
			<div id="seatPlan">
				<!-- <img src="C:\JavaStudy\upload\seat.jpg" alt="이미지 없음">  --> <!-- html 코드 -->
				
				<div id="seatPlanDiv">
					<div id="stageArea">stage</div>
					<table>
						<tbody id="seatArea">
							
						</tbody>
					</table>
				</div>
				<div style="position:relative; top:-10px; left:300px;">
					A
				</div>
				
				
				
			</div>
		</div>
			
		<div id="side">
			<div id="price">
				<h2>등급 가격표</h2>
				<div id="priceTable">
					<table>
						<colgroup>
							<col style="width:10%">
							<col style="width:25%">
							<col style="width:40%">
							<col style="width:25%">
						</colgroup>
						<tr>
							<td><div class="seatColor vipSeat"></div></td>
							<td>VIP석</td>
							<td>140,000원</td>
							<td class="remaining">143석</td>
						</tr>
						<tr>
							<td><div class="seatColor rSeat"></div></td>
							<td>R석</td>
							<td>120,000원</td>
							<td class="remaining">15석</td>
						</tr>
						<tr>
							<td><div class="seatColor sSeat"></div></td>
							<td>S석</td>
							<td>100,000원</td>
							<td class="remaining">43석</td>
						</tr>
						<tr>
							<td><div class="seatColor aSeat"></div></td>
							<td>A석</td>
							<td>80,000원</td>
							<td class="remaining">30석</td>
						</tr>
						<tr>
							<td><div class="seatColor bSeat"></div></td>
							<td>B석</td>
							<td>60,000원</td>
							<td class="remaining">30석</td>
						</tr>
						
					</table>
				</div>
			</div>
			
			<div id="choice">
				<h2>선택 좌석 </h2>
				<div id="choiceTable">
					<table>
						<colgroup>
							<col style="width:28%">
							<col style="">
						</colgroup>
						<tr>
							<td>VIP석</td>
							<td id="right">A구역 1열 4번</td>
						</tr>
						<tr>
							<td>S석</td>
							<td id="right">B구역 4열 12번</td>
						</tr>
					</table>
				</div>
			</div>
			
			<div id="button">
				<button class="btn-primary" type="button" id="nextBtn" class="btn">다음단계 </button> 
				<button class="btn-default">취소표 알림</button>
			</div>
		</div>
	</div>
</body>


</html>