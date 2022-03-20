<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/seat/seatPlanDraggable.js"></script>
<script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/venues/venue${param.hallNo}.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/seat/seatMap.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/seat.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/venues/venue${param.hallNo}.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation1.css" rel="stylesheet" type="text/css">



</head>

<body>

	<div id="containerBody">
		${rezProdInfo.hallNo}
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
			<div id="prodInfo">
				<table>
					<colgroup>
						<col style="width:45%">
						<col style="">
						<col style="width:19%">
					</colgroup>
					<tr>
						<td><h2></h2></td>
						<td id="theaterName" class="right"></td>
						<td class="right"></td>
					</tr>
				</table>
			</div>
			
							
			<div id="seatPlanBox">
				<div id="draggable">						
					<div id="seatPlan">
						
						<div id="seatPlanDiv">
							<div id="stageArea">stage</div>
							
						</div>
						
					</div>
				</div>
			</div>
		</div>
			
		<div id="side">
			<div id="button">
				
				<button class="btn-primary" type="button" id="nextBtn" class="btn"> SEAT 테이블 초기화 </button>
			</div>
		</div>
		
		
	</div>
	
	<input id="pageContext" type="hidden" value="${pageContext.request.contextPath}">
	<input id="hallNo" type="hidden" value="${param.hallNo}">
</body>

</html>