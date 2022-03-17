<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓자바 헤더</title>
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
</head>

<body>

		<!-- 헤더 header 구역 시작 (로그인 로고 검색창) -->
		<header class="container-fluid zp">
			<div class="container">
			
				<div class="row">
					<!-- 로그인 회원가입 그리드 시작 -->
					<div class="col-xs-9"></div>
					<div class="col-xs-3 zp">
						<div id="header" class="clearfix no-drag no-ghost">
							<ul>
								
								<c:choose>
									<c:when test="${authUser eq null}">
										
										<li><a href="${pageContext.request.contextPath}/user/loginForm">로그인</a></li>
										<li><a href="${pageContext.request.contextPath}/user/joinForm">회원가입</a></li>
									</c:when>
									
									<c:when test="${authUser.usertype == 1}"> <!-- 개인 -->
										<li><a href="${pageContext.request.contextPath}/mypage/reserveAlram"><img src="${pageContext.request.contextPath}/assets/image/index/bell-normal.png"></a></li>
										<li><a href="${pageContext.request.contextPath}/mypage/reserveAlram"><img src="${pageContext.request.contextPath}/assets/image/index/bell-new.png"></a></li>
										<li><a href="${pageContext.request.contextPath}/mypage/reserveList">${authUser.name}님</a></li>
										<li><a href="${pageContext.request.contextPath}/user/logout">로그아웃</a></li>
									</c:when>
									
									<c:when test="${authUser.usertype == 2}"> <!-- 사업자  -->
										<li><a href="${pageContext.request.contextPath}/bm/">${authUser.name}님</a></li>
										<li><a href="${pageContext.request.contextPath}/user/logout">로그아웃</a></li>
									</c:when>
									
									<c:otherwise> <!-- 사이트 관리자 -->
										<li><a href="${pageContext.request.contextPath}/admin/"><span class="glyphicon glyphicon-cog"></span>&nbsp;${authUser.name}님</a></li>
										<li><a href="${pageContext.request.contextPath}/user/logout">로그아웃</a></li>
									</c:otherwise>
									
								</c:choose>
								
								
								<!-- 개발용 임시 메뉴 bm 사업자 adm 관리자 -->
								<%-- <li><a href="${pageContext.request.contextPath}/bm/">bm</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/">adm</a></li> --%>
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
						<a href="http://localhost:8088/ticketjava/"><img src="${pageContext.request.contextPath}/assets/image/index/ticketjava_main_logo.png"></a>
					</div>
					<div class="col-xs-9 searchBar">
						<form action="${pageContext.request.contextPath}/product/search" method="post"  class="form-horizontal">
							<input type="text" class="form-control dis vm" placeholder="내가 찾는 티켓은.." name="keyword" value="">
							<button type="submit" class="btn btn-primary index-search"><span class="glyphicon glyphicon-search"></span>티켓잡으러검색</button>
						</form>
					</div>

				</div>
				<!-- 로고 검색자리 그리드 종료 -->
			</div>
			<!-- container 종료 -->
		</header>
		<!-- 헤더 구역 종료 (로그인 로고 검색창) -->


		<!-- 네비바 구역 시작 -->
		<nav class="container-fluid zp navbox">
			<div class="container nav">
			
				<!-- 네비바 자리 그리드없음 중앙 정렬 1000px 파란색 줄 -->
				<div id="navnav" class="navbar no-drag">
					<div id="navbar" class="" role="navigation">
						<ul class="clearfix">
							<li class="nav-item"><a href="${pageContext.request.contextPath}/product/type?prodType=1">뮤지컬</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/product/type?prodType=2">연극</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/product/type?prodType=3">콘서트</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/product/sports?prodType=4">스포츠</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/product/type?prodType=5">전시</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/product/theaterList"><span class="smallFont">공연장</span></a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/product/region?cateNo=0"><span class="smallFont">지역</span></a></li>
							<li id="last-nav-item" class="nav-item"><a href="${pageContext.request.contextPath}/product/ranking"><span class="smallFont">랭킹</span></a></li>
						</ul>
					</div>
				</div>

			</div>
			<!-- container 종료 -->
		</nav>
		<!-- 네비바 구역 종료 -->


</body>
</html>