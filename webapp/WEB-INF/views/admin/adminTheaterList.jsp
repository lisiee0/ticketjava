<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava include</title>


<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">

<!-- 개인 css -->
<link href="${pageContext.request.contextPath}/assets/css/indcom.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/admin/admin.css" rel="stylesheet">

</head>

<body>
	<div id="wrap">
		<div class="container-fluid zp">
			<div class="container"> <!-- 헤더 로그인 로고 검색창 구역 시작 -->
				<!-- header 로그인 회원가입 -->
				<div class="row"> 
					<div class="col-xs-9"></div>
					<div class="col-xs-3 zp">
						<div id="header" class="clearfix">
							<ul>
								<li><a href="#"><img src="assets/image/index/bell-normal.png"></a></li>
								<li><a href="#"><img src="assets/image/index/bell-new.png"></a></li>
	
								<li><a href="#">로그인</a></li>
								<li><a href="#">회원가입</a></li>
							</ul>
						</div>
					</div>
				</div> 
			</div>
		
			<div class="container">
				<div class="row">
					<!-- 로고 검색자리 4 4 4그리드 -->
					<div class="col-xs-3" id="ticketJavaLogo">
						<a href=""><img src="assets/image/index/ticketjava-logo-150-37.png"></a>
					</div>
					
					
					<div class="col-xs-9" id="serachBar">
						<form class="form-horizontal">
							<input type="text" class="form-control dis vm" placeholder="내가 찾는 티켓은.." value="">
							<button type="submit" class="btn btn-primary index-search ">티켓잡으러검색</button>
						</form>
					</div> <!-- 로고 검색자리 그리드 종료 -->
				</div>
			</div> <!-- container 종료 -->
		</div>
		
		
		
		<div class="container-fluid zp navbox"> <!-- 네비바 시작 -->
			<div class="container nav">
				<!-- 네비바 자리 그리드없음 중앙 정렬 1000px 파란색 줄 -->
				<nav id="navnav" class="navbar navbar-expand-lg navbar-dark bg-primary btn-primary">
					<div id="navbar" class="" role="navigation">
						<ul class="clearfix">
							<li class="nav-item"><a href="">뮤지컬</a></li>
							<li class="nav-item"><a href="">연극</a></li>
							<li class="nav-item"><a href="">콘서트</a></li>
							<li class="nav-item"><a href="">스포츠</a></li>
							<li class="nav-item"><a href="">전시</a></li>
							<li class="nav-item"><a href=""><span class="smallFont">공연장</span></a></li>
							<li class="nav-item"><a href=""><span class="smallFont">지역</span></a></li>
							<li id="last-nav-item" class="nav-item"><a href=""><span class="smallFont">랭킹</span></a></li>
						</ul>
					</div>
				</nav>
			</div> <!-- container 종료 -->
		</div> <!-- 네비바 종료 -->
		
		
		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">
			<div class="container"> 
				<div class="row">
					<!-- .col-xs-2 어사이드 자리 시작 -->
					<div class="col-xs-2 np">
						<div id="admin-aside">
							<h2 class="admin-pageMenu">관리페이지</h2>
							<ul class="clearfix">
								<li class="currentPage menubar-line">공연장 목록</li>
								<li>공연장 공지사항</li>
							</ul>
						</div>
					</div>
					<!-- 어사이드 종료 -->
		
					<!-- .col-xs-10컨텐츠 출력 자리 시작 -->
					<div class="col-xs-10 admin-content">
						<!-- content-head -->
						<div class="col-xs-12 np">
							<h3 class="pageMenu adminsection">공연장 목록</h3>

							<button type="button" class="btn btn-primary position">공연장 등록</button>
						</div>
						<!-- //content-head -->
				
						<!-- content body -->
						<div id="list">
							<table class="table listTable">
								<thead>
									<tr class="info">
										<th>공연장명</th>
										<th>시설명</th>
										<th>주소</th>
										<th>대표번호</th>
										<th>홈페이지</th>
										<th>관리</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>예술의전당</td>
										<td>오페라극장</td>
										<td class="text-left">서울특별시 서초구 서초동</td>
										<td>02-1234-5678</td>
										<td>www.sac.co.kr</td>
										<td><span class="glyphicon glyphicon-trash"></span></td>
									</tr>
									
									<tr>
										<td>예술의전당</td>
										<td>오페라극장</td>
										<td class="text-left">서울특별시 서초구 서초동</td>
										<td>02-1234-5678</td>
										<td>www.sac.co.kr</td>
										<td><span class="glyphicon glyphicon-trash"></span></td>
									</tr>
									
									<tr>
										<td>예술의전당</td>
										<td>오페라극장</td>
										<td class="text-left">서울특별시 서초구 서초동</td>
										<td>02-1234-5678</td>
										<td>www.sac.co.kr</td>
										<td><span class="glyphicon glyphicon-trash"></span></td>
									</tr>
									
									<tr>
										<td>세종문화회관</td>
										<td>대극장</td>
										<td class="text-left">서울특별시 종로구 광화문로</td>
										<td>02-2222-33333</td>
										<td>www.kingsejong.co.kr</td>
										<td><span class="glyphicon glyphicon-trash"></span></td>
									</tr>
								</tbody>					
							</table>
						</div>
						<!-- // content body -->
						
					</div>
					<!-- 컨텐츠 종료 -->
				</div>		
			</div> 
		</div>
		<!-- 컨텐츠 구역 종료 -->

		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

	</div>
	<!-- //wrap -->

</body>

</html>