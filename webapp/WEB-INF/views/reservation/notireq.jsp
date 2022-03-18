<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/assets/jquery/venues/venue1.js"></script>
<c:import url="/assets/js/reservation/notireqJs.jsp"></c:import>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/seat.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation2.css" rel="stylesheet" type="text/css">


</head>

<body>
	<div id="containerBody">
		
		<div id="header">
			<h1><a id="reserveGo" href="">예매페이지로 이동</a></h1>
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
						<col style="width:19%">
					</colgroup>
					<tr>
						<td><h2>${rezProdInfo.prodName}</h2></td>
						<td id="theaterName" class="right">${rezProdInfo.place}</td>
						<td class="right">${param.viewDate} ${rezProdInfo.showTime}</td>
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
			<!-- <div id="tabOption">
				<ul class="nav nav-tabs">
					<li class="nav item"><button class="btn-primary">알림 신청</button></li>
					<li class="nav item"><button class="btn-outline-primary">나의 신청</button></li>
				</ul>
			</div> -->
				
			<div id="section"> 
				
				<h2>구역 선택</h2>
				<div id="sectionBtn" data-toggle="buttons">
					
				</div>
			</div>
			<!-- 
			<div id="interval">
				<h2>알림 간격</h2>
				<select class="form-control">
					<option value="0">간격 없음</option>
					<option value="10">10초</option>
					<option value="60">1분</option>
					<option value="300">5분</option>
					<option value="600">10분</option>
					<option value="3600">60분</option>
				</select>
			</div>
			 -->
			<div id="count">
				<h2>알림 횟수</h2>
				<select class="form-control">	
					
				</select>
			</div>
			
			<div id="myReq">
				<h2>나의 신청</h2>
				<div id="myReqDetail"></div> 
			</div>
			
			<div id="button">
				<form id="reqForm" method="post">
					<input type="hidden" name="prodNo" value="${param.prodNo}">
					<input type="hidden" name="viewDate" value="${param.viewDate}">
					<div id="btnArea"></div>
				</form>
			</div>
		</div>
		
		
	</div>

</body>


</html>