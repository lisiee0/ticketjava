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
<script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<!-- <script src="assets/bootstrap/js/sejong1.js"></script> -->
<script src="${pageContext.request.contextPath}/assets/jquery/venues/venue${rezProdInfo.hallNo}.js"></script>

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

<script type="text/javascript">
var viewDate = '${param.viewDate}';
var prodNo = '${param.prodNo}';

$(document).ready(function(){
	/* $.ajax({
		url: "${pageContext.request.contextPath}/reservation/preDel",
		type : "post",
		dataType: "json",
		success : function(){
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	}); */
	
	var rezVo = {
			viewDate: viewDate ,
			prodNo: prodNo
	};
	$.ajax({
		url: "${pageContext.request.contextPath}/selseat/occupyList",
		type : "post",
		data : rezVo,
		async : false,
		dataType: "json",
		success : function(selseatList){

			for(var selseat of selseatList){
				var grade = selseat.grade;
				if(grade == 'vip')
					grade = 'v';
				var section = selseat.section;
				var col = selseat.col;
				var num = selseat.num;
				
				$('[class='+grade+'][data-section='+section+'][data-col='+col+'][data-num='+num+']').attr("disabled",true);
			}
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	
	var gradeList = $('#priceTable tr');
	for(var i=0; i<gradeList.length; i++){
		var gradetr = gradeList.eq(i);
		var grade = gradetr.data('grade');
		if(grade=='vip'){
			grade = 'v';
		}
		
		/* var remaining = 0; */
		
		var notOccupy = $('#seatPlanDiv input[type=checkbox].'+grade+':not(:disabled)');
		var remaining = notOccupy.length;
		
		gradetr.find('.remaining').text(remaining+'석');
	}
	
});


	
$('#seatPlanDiv').on('change','table td input[type=checkbox]' ,function(){
	if(this.checked){
		var grade= $(this).attr("class");
		if(grade == 'v')
			grade = "vip";
		var section = $(this).attr('data-section');
		var col =  $(this).attr('data-col');
		var num = $(this).attr('data-num');
		
		$('#choiceTable table').append(
				'<tr id="tr'+$(this).attr('id')+'"><td>'+grade.toUpperCase()+
				'석</td><td class="right">'+section+'구역 '+col+'열 '+num+'번</td></tr>'
		);
		
	}
});


$('#seatPlanDiv').on('change','table td input[type=checkbox]' ,function(){
	if(! this.checked){
		$('#tr'+$(this).attr('id')).remove();
	}
	
	
});

$('#nextBtn').on('click', function(){
	
	var chkbox = $('[type=checkbox]:checked').get();
	
	if(chkbox.length <= 0){
		alert('좌석을 선택해주세요');
		return false;
	}
	
	var selseatList = [];
	for(var i=0; i< chkbox.length; i++) {
		var e = $('[type=checkbox]:checked').eq(i);
		
		var grade= e.attr("class");
		if(grade == 'v')
			grade = "vip";
		var section = e.attr('data-section');
		var col = e.attr('data-col');
		var num = e.attr('data-num');
		
		var preoccupyVo = {
			grade:grade,
			section:section,
			col:col,
			num:num				
		};
		selseatList.push(preoccupyVo);
	}
	
	var rezVo = {
			viewDate: viewDate,
			prodNo: prodNo,
			selseatList:selseatList
	};
	
	
	$.ajax({
		url: "${pageContext.request.contextPath}/reservation/preoccupy",
		type : "post",
		traditional: true,
		contentType : "application/json",
		data: JSON.stringify(rezVo),
		dataType: "json",
		success : function(rezNo){
			console.log(rezNo);
			
			$('#seatForm').append('<input type="hidden" name="rezNo" value="'+rezNo+'">');
			$('#seatForm').submit();
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	 
	
});

$('#cancelNotiBtn').on('click',function(){
	location.href = '${pageContext.request.contextPath}/notireq/notireq?prodNo='+prodNo+'&viewDate='+viewDate;
});


</script>

</html>