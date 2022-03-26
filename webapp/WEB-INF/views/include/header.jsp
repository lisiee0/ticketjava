<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓자바 헤더</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">


<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>
</head>

<body>
		<div id="headerContainerFluid" class="container-fluid zp">
			<div id="headerContainer" class="container zp">
					
				<div id="header" class="clearfix no-drag no-ghost">
					<ul id="userMenu">
						<c:choose>
							<c:when test="${authUser eq null}">
								<li><a href="${pageContext.request.contextPath}/user/loginForm">로그인</a></li>
								<li><a href="${pageContext.request.contextPath}/user/joinForm">회원가입</a></li>
							</c:when>
							
							<c:when test="${authUser.usertype == 1}"> <!-- 개인 -->
								
								<li class="userName">
									<a href="${pageContext.request.contextPath}/mypage/reserveAlram"><img id="bell" src=""></a>
									<a href="${pageContext.request.contextPath}/mypage/">${authUser.name}님</a>
								</li>
								<li><a href="${pageContext.request.contextPath}/mypage/reserveList">예매확인/취소</a></li>
								<li><a href="${pageContext.request.contextPath}/user/logout">로그아웃</a></li>
							</c:when>
							
							<c:when test="${authUser.usertype == 2}"> <!-- 사업자  -->
								<li class="userName">${authUser.name}님</li>
								<li><a href="${pageContext.request.contextPath}/bm/">공연관리</a></li>
								<li><a href="${pageContext.request.contextPath}/user/logout">로그아웃</a></li>
							</c:when>
							
							<c:otherwise> <!-- 사이트 관리자 -->
								<li class="userName">${authUser.name}님</li>
								<li><a href="${pageContext.request.contextPath}/admin/"><span class="glyphicon glyphicon-cog"></span> 관리자 메뉴</a></li>
								<li><a href="${pageContext.request.contextPath}/user/logout">로그아웃</a></li>
							</c:otherwise>
							
						</c:choose>
						
						
						<!-- 개발용 임시 메뉴 bm 사업자 adm 관리자 -->
						<%-- <li><a href="${pageContext.request.contextPath}/bm/">bm</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/">adm</a></li> --%>
					</ul>
				</div>
					
			</div>
			<!-- container 종료 -->
		</div>

		<!-- 헤더 header 구역 시작 (로그인 로고 검색창) -->
		<header class="container-fluid zp">

			<div class="container">
				<div class="row">
				
					<!-- 로고 검색자리 그리드 시작 -->
					<div class="col-xs-4 no-drag no-ghost" id="ticketJavaLogo">
						<%-- 예매 캡챠 기능때문에 잠금 <a href="http://localhost:8088/ticketjava/"><img src="${pageContext.request.contextPath}/assets/image/index/ticketjava_main_logo.png"></a> --%>
						<a href="http://127.0.0.1:8088/ticketjava/"><img src="${pageContext.request.contextPath}/assets/image/index/ticketjava_main_logo.png"></a>
					</div>
					
					<div class="col-xs-4 searchBar">
						<form action="${pageContext.request.contextPath}/product/search" method="post">
							<div class="input-group search-group">
								<input type="text" class="form-control dis vm" placeholder="" name="keyword" value="">
								<span class="input-group-btn">
									<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span></button>
								</span>
							</div><!-- /.col-sm-6 -->
						</form>
					</div>
					<div class="col-xs-4">
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
	<input type="hidden" id="userType" value="${authUser.usertype}">
</body>

<script>
	$('ul#userMenu li').eq(0).css('border','none');
	
	if( $('#userType').val() == 1 ){
		$.ajax({
			url: "${pageContext.request.contextPath}/notification/unread",
			type : "post",
			dataType: "json",
			success : function(result){
				if(result == 'unread'){
					$('#bell').attr('src', '${pageContext.request.contextPath}/assets/image/index/bell-new.png');
				}
				else{
					$('#bell').attr('src', '${pageContext.request.contextPath}/assets/image/index/bell-normal.png');
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
</script>

</html>