<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/assets/jquery/venues/sejong2.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
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
					<li class="nav item"><button class="btn-primary">알림 신청</button></li>
					<li class="nav item"><button class="btn-outline-primary">나의 신청</button></li>
				</ul>
			</div>
				
			<div id="section"> 
				
				<h2>구역 선택</h2>
				<div id="sectionBtn" data-toggle="buttons">
					<label class="btn btn-primary">
						<input type="radio" name="section" autocomplete="off"> A
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="section" autocomplete="off"> B
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="section" autocomplete="off"> C
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="section" autocomplete="off"> D
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="section" autocomplete="off"> E
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="section" autocomplete="off"> F
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="section" autocomplete="off"> G
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="section" autocomplete="off"> H
					</label>
					
				</div>
			</div>
			
			<div id="interval">
				<h2>알림 간격</h2>
				<select class="form-control">
					<option>10초</option>
					<option>1분</option>
					<option>5분</option>
					<option>10분</option>
					<option>30분</option>
					<option>60분</option>
					<option>간격 없음</option>
				</select>
			</div>
			
			<div id="count">
				<h2>알림 횟수</h2>
				<select class="form-control">
					
				</select>
			</div>
			
			<div id="button">
				<button class="btn-primary">알림 신청</button>
			</div>
		</div>
		
		
	</div>

</body>

<script type="text/javascript">
	$(document).ready(function(){
		$("#side #count select").append('<option>계속</option>');
		for(var i=1; i<=10 ; i++){
			$("#side #count select").append('<option>'+i+'</option>');
		}
	});
	
</script>


</html>