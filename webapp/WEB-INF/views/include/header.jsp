<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
</head>
<body>

	<div class="container-fluid zp">
		<div class="container">
		
			<div class="row">
				<!-- 로그인 회원가입 그리드 시작 -->
				<div class="col-xs-9"></div>
				<div class="col-xs-3 zp">
					<div id="header" class="clearfix no-drag no-ghost">
						<ul>
							<li><a href="#"><img src="${pageContext.request.contextPath}/assets/image/index/bell-normal.png"></a></li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/assets/image/index/bell-new.png"></a></li>

							<li><a href="#">로그인</a></li>
							<li><a href="#">회원가입</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 로그인 회원가입 그리드 종료 -->
			
		</div>
		<!-- container 종료 -->


		<div class="container">
			<div class="row">
			
				<!-- 로고 검색자리 그리드 시작 -->
				<div class="col-xs-3 no-drag no-ghost" id="ticketJavaLogo">
					<a href=""><img src="${pageContext.request.contextPath}/assets/image/index/ticketjava_main_logo.png"></a>
				</div>
				<div class="col-xs-9" id="serachBar">
					<form class="form-horizontal">
						<input type="text" class="form-control dis vm" placeholder="내가 찾는 티켓은.." value="">
						<button type="submit" class="btn btn-primary index-search">티켓잡으러검색</button>
					</form>
				</div>

			</div>
			<!-- 로고 검색자리 그리드 종료 -->
		</div>
		<!-- container 종료 -->
	</div>
	<!-- 헤더 구역 종료 (로그인 로고 검색창) -->


	<!-- 네비바 구역 시작 -->
	<div class="container-fluid zp navbox">
		<div class="container nav">
		
			<!-- 네비바 자리 그리드없음 중앙 정렬 1000px 파란색 줄 -->
			<nav id="navnav" class="navbar navbar-expand-lg navbar-dark bg-primary btn-primary no-drag">
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

		</div>
		<!-- container 종료 -->
	</div>

</body>
</html>