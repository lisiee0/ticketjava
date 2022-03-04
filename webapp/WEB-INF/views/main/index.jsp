<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓자바 TicketJava 당신의 인생작을 티켓자바로 만나보세요!</title>

<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">

<!-- 메인페이지 디자인 css  -->
<link href="assets/css/ticketjavaIndexDesign.css" rel="stylesheet" type="text/css">

</head>


<body>
	<div id="wrap">

		<!-- 헤더 header 구역 시작 (로그인 로고 검색창) -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 구역 종료 -->


		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">


			<!-- 영상 재생 -->
			<div class="mainVideo">
				<!-- 영상재생이 안될때 대신 보여주는 이미지 -->
				<img src="assets/image/index/thumbnail_ticketjava_desktop.png">
				<video loop="" muted="" autoplay="" playsinline="" webkit-playsinline="true">
					<source type="video/mp4" src="assets/video/video_index.mp4">
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
						<a href="#">예매하러가기</a>
					</p>
				</div>
			</div>


		</div>
		<!-- 컨텐츠 구역 종료 -->


		<!-- 푸터 구역 시작 -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<!-- 푸터 구역 종료 -->

	</div>
	<!-- wrap 종료 -->

</body>
</html>
