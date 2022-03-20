<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

<script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/venues/venue${rezProdInfo.hallNo}.js"></script>
<c:import url="/assets/js/reservation/selectSeatJs.jsp"></c:import>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/seat.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/venues/venue${rezProdInfo.hallNo}.css" rel="stylesheet" type="text/css">
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
						
						<c:forEach items="${seatpriceList}" var="vo">
							<tr data-grade="${vo.grade}">
								<td><div class="seatColor ${vo.grade}Seat"></div></td>
								<td>${fn:toUpperCase(vo.grade)}석</td>
								<td>${vo.price}원</td>
								<td class="remaining">석</td>
							</tr>
						</c:forEach>
						<!--
						<tr>
							<td><div class="seatColor bSeat"></div></td>
							<td>B석</td>
							<td>60,000원</td>
							<td class="remaining">30석</td>
						</tr> -->
						
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
						<!-- <tr>
							<td>VIP석</td>
							<td id="right">A구역 1열 4번</td>
						</tr> -->
						
					</table>
					
				</div>
			</div>
			<div id="button">
				
				<form id="seatForm" action="${pageContext.request.contextPath}/reservation/selectQuantity" method="post">
					<input type="hidden" name="prodNo" value="${param.prodNo}">
					<input type="hidden" name="viewDate" value="${param.viewDate}">
					<button class="btn-primary" type="button" id="nextBtn" class="btn">다음단계 </button>
				</form>
				<button id="cancelNotiBtn" class="btn-default">취소표 알림</button>
			</div>
		</div>
	</div>
	
</body>

<script>
  $( function() {
    $( "#draggable" ).draggable();
    
  } );
 </script>

</html>