<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/assets/jquery/venues/venue1.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/seat.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation2.css" rel="stylesheet" type="text/css">


</head>

<body>
	<div id="containerBody">
		
		<div id="header">
			<h1><a href="${pageContext.request.contextPath}/reservation/selectSeat?prodNo=${param.prodNo}&viewDate=${param.viewDate}">예매페이지로 이동</a></h1>
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
			
			<div id="count">
				<h2>알림 횟수</h2>
				<select class="form-control">
					
				</select>
			</div>
			
			<div id="myReq">
				<h2>나의 신청</h2>
				<p id="myReqText"></p> 
			</div>
			
			<div id="button">
				<form id="notiReqForm" action="${pageContext.request.contextPath}/notification/addNotireq" method="post">
					<button id="notiReqBtn" type="button" class="btn-primary">알림 신청</button>
					<input type="hidden" name="prodNo" value="${param.prodNo}">
					<input type="hidden" name="viewDate" value="${param.viewDate}">
					
				</form>
			</div>
		</div>
		
		
	</div>

</body>

<script type="text/javascript">
	var viewDate = '${param.viewDate}';
	var prodNo = '${param.prodNo}';
	$(document).ready(function(){
		$("#side #count select").append('<option value="1000000">계속</option>');
		for(var i=1; i<=10 ; i++){
			$("#side #count select").append('<option value="'+i+'">'+i+'</option>');
		}
		
		
		$('input[type=checkbox]').on('click',function(){
			return false;
		});
		
		
		
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
		
		var sectionTable = $('table tr th');
		
		for(var i=0; i<sectionTable.length;i++){
			var section = sectionTable.eq(i).text();
			
			var notOccupy = $('#seatPlanDiv input[type=checkbox][data-section='+section+']:not(:disabled)');
			var remaining = notOccupy.length;
			
			if(remaining > 0)
				$('#sectionBtn').append('<label class="btn btn-primary" disabled><input type="radio" name="section" autocomplete="off">'+ section +'</label>');
			else
				$('#sectionBtn').append('<label class="btn btn-primary"><input type="radio" name="section" autocomplete="off">'+ section +'</label>');
			
		}
		
		var notireqVo = {
			prodNo : prodNo,
			viewDate : viewDate
		};
		
		$.ajax({
			url: "${pageContext.request.contextPath}/notireq/myNotireq",
			type : "post",
			data : notireqVo,
			dataType: "json",
			success : function(notireqVo){
				console.log(notireqVo);
				var selSection = notireqVo.selSection;
				
				if(selSection == null) {
					return false;
				}
				
				var interval = notireqVo.interval;
				if(interval == 0)
					interval = '간격 없음';
				else
					interval += '초';
				var notiTimes = notireqVo.notiTimes;
				if(notiTimes == 1000000)
					notiTimes = '계속';
				else
					notiTimes += '회';
				
				
				$('#myReqText').html(selSection+'구역 / '+interval+ ' / '+notiTimes+ '<span id="reqDel" class="glyphicon glyphicon-remove" aria-hidden="true" data-reqno="'+notireqVo.reqNo+'"></span>'  );
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
	});
	
	$('#notiReqBtn').on('click',function(){
		var selSection = $('label.active').text();
		
		if(selSection == ''){
			alert('구역을 선택해주세요');
			return false;
		}
		
		var interval = $('#interval select').val();
		var notiTimes = $('#count select').val();
		
		var notireqVo = {
				prodNo:prodNo,
				viewDate:viewDate,
				selSection:selSection,
				interval:interval,
				notiTimes:notiTimes
		}
		
		console.log(notireqVo);
		$.ajax({
			url: "${pageContext.request.contextPath}/notireq/addNotireq",
			type : "post",
			data : notireqVo,
			dataType: "json",
			success : function(result){
				if(result == 'fail')
					alert('신청이 존재합니다');
				else{
					if(interval == 0)
						interval = '간격 없음';
					else
						interval += '초';
					if(notiTimes == 1000000)
						notiTimes = '계속';
					else
						notiTimes += '회';
					alert('신청됐습니다');
					$('#myReqText').html(selSection+'구역 / '+interval+ ' / '+notiTimes+ '<span id="reqDel" class="glyphicon glyphicon-remove" aria-hidden="true"></span>'  );
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
	});

	$('#myReq').on('click','#reqDel',function(){
		var notireqVo = {
				prodNo:prodNo,
				viewDate:viewDate
		}
		
		$.ajax({
			url: "${pageContext.request.contextPath}/notireq/reqDel",
			type : "post",
			data : notireqVo,
			dataType: "json",
			success : function(result){
				if(result == "success"){
					alert('취소됐습니다');
					$('#myReqText').html('');
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
	});
	
	
</script>


</html>