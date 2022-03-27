<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓자바 TicketJava 당신의 인생작을 티켓자바로 만나보세요!</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">


<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">

<!-- 메인페이지 디자인 css  -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaIndexDesign.css" rel="stylesheet" type="text/css">

</head>


<body>

	<div id="wrap">

		<!-- 헤더 header 구역 시작 (로그인 로고 검색창) -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 구역 종료 -->


		<!-- 컨텐츠 구역 시작 -->
		<article class="container-fluid zp">

			<c:set var="rand" value="<%= java.lang.Math.floor(java.lang.Math.random()*8)+1 %>" />
			<fmt:parseNumber var= "randomVideo" integerOnly= "true" value= "${rand}" />
			<!-- 영상 재생 구역 시작 -->
			<section class="productVideo">
				<div class="mainVideo">
					<!-- 영상재생이 안될때 대신 보여주는 이미지 -->
					<%-- <img src="${pageContext.request.contextPath}/assets/image/index/thumbnail_ticketjava_desktop.png"> --%>
					<video loop="" muted="" autoplay="" playsinline="" webkit-playsinline="true">
						<source id="videoSrc" type="video/mp4" src="${pageContext.request.contextPath}/assets/video/video${randomVideo}.mp4">
					</video>
				</div>

				<!-- 영상 코멘트 및 버튼 -->
				<div class="mainVideoOverlay">
					<div class="mainVideoComment">
						<h1>
							당신의 인생작품을<br>놓치지 마세요
						</h1>
					</div>
					<div class="mainVideoButton">
						<p>
							<a href="${pageContext.request.contextPath}/product/ranking">예매하러가기</a>
						</p>
					</div>
				</div>
			</section>
			<!-- 영상 재생 구역 종료 -->

			<!-- 티켓자바 카운터 -->
			<section>
			<div class="container-fluid zp">
				<div class="container zp">
					<div class="row">
						<div class="col-xs-5 counter-item zp">
							<p style="font-size:27px; color:#aaa; font-weight:900; line-height:1.5em; margin-top:15px">지금까지 
								<span class="counter" data-to="${map.userNum}" data-speed="1000" style="font-size:27px; color:#555; font-weight:900;">50</span><span style="color:black;">분</span>이<br>
								티켓자바를 통해<br> 
								원하는 작품을 만나셨어요!
							</p>
						</div>
						<div class="col-xs-2 zp">
						</div>
						<div class="col-xs-5 counter-item zp">
							<p style="font-size:27px; color:#aaa; font-weight:300; line-height:2.5em;">
								티켓자바와 함께 한 누적 시간<br>
								<span class="counter" data-to="${map.cumulativeTime}" data-speed="1000" style="font-size:65px; color:#555; font-weight:900;">1000</span><span style="font-size:65px; color:#555; font-weight:900;">분</span>
							</p>
						</div>
					</div>
				
				</div>
			</div>
			</section>
			<!-- //티켓자바 카운터 -->




		</article>
		<!-- 컨텐츠 구역 종료 -->


		<!-- 푸터 구역 시작 -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<!-- 푸터 구역 종료 -->

	</div>
	<!-- wrap 종료 -->

</body>

<!-- 갤러리 기능을 위한 js -->
<script src="${pageContext.request.contextPath}/assets/js/ajax1.12.4jquery.min.js"></script>

<!-- 카운터 기능을 위한 js -->
<script src="${pageContext.request.contextPath}/assets/js/jquery.countTo.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/indexCounter.js"></script>

</html>
