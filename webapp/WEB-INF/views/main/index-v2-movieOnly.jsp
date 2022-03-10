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





			<!-- 티켓모양 종이질감 구역 시작 -->
			<section class="container-fluid zp ticketjavaAbout">

				<div class="ticketBorderTop zp" style="background-image: URL(assets/image/index/ticket_paper_border_top.png); background-repeat: repeat-x; height: 40px; width: 100%;"></div>

				<div class="ticketBorderMid" style="background-image: URL(assets/image/index/orange_paper-texture.png); background-repeat: repeat; height: 400px; width: 100%;">

					<div class="ticketbox">


						<!-- 카운터 numbering 구역 시작 -->
						<section class="numbering text-center">
							<div class="container">
								<div class="row">
									<div class="col-sm-3 col-xs-6"></div>
									<div class="col-sm-3 col-xs-6 text-center counter-item">
										<h3>지금까지</h3>
										<p class="counter" data-to="377" data-speed="2000">0</p>
										<h3>
											분이 <br>티켓자바를 통해 <br>원하는 작품을 만나셨습니다!
										</h3>
									</div>

									<div class="col-sm-3 col-xs-6 text-center counter-item">
										<h4>티켓자바로 본 누적 작품 시간</h4>
										<br>
										<h2>
											<p class="counter" data-to="1525204" data-speed="2000">0</p>
											분
										</h2>
									</div>
									<div class="col-sm-3 col-xs-6"></div>

								</div>
							</div>
						</section>
						<!-- 카운터 numbering 구역 종료 -->



					</div>
					<!-- //ticketbox -->
				</div>
				<!-- // ticketBorderMid -->

				<div style="background-image: URL(assets/image/index/ticket_paper_border_bottom.png); background-repeat: repeat-x; height: 100px; width: 100%;"></div>

			</section>
			<!-- 티켓모양 종이질감 구역 종료 -->



			<!-- 티켓모양 구역 시작 -->
			<section class="container-fluid zp ticketjavaAbout">

				<div class="ticketBorderTop zp" style="background-image: URL(assets/image/index/ticket_border_top.png); background-repeat: repeat-x; height: 40px; width: 100%;"></div>

				<div class="ticketBorderMid">

					<div class="ticketbox">


						<!-- 카운터 numbering 구역 시작 -->
						<section class="numbering text-center">
							<div class="container">
								<div class="row">
									<div class="col-sm-3 col-xs-6"></div>
									<div class="col-sm-3 col-xs-6 text-center counter-item">
										<h3>지금까지</h3>
										<p class="counter" data-to="377" data-speed="2000">0</p>
										<h3>
											분이 <br>티켓자바를 통해 <br>원하는 작품을 만나셨습니다!
										</h3>
									</div>

									<div class="col-sm-3 col-xs-6 text-center counter-item">
										<h4>티켓자바로 본 누적 작품 시간</h4>
										<br>
										<h2>
											<p class="counter" data-to="1525204" data-speed="2000">0</p>
											분
										</h2>
									</div>
									<div class="col-sm-3 col-xs-6"></div>

								</div>
							</div>
						</section>
						<!-- 카운터 numbering 구역 종료 -->



					</div>
					<!-- //ticketbox -->
				</div>
				<!-- // ticketBorderMid -->

				<div style="background-image: URL(assets/image/index/ticket_border_bottom.png); background-repeat: repeat-x; height: 100px; width: 100%;"></div>

			</section>
			<!-- 티켓모양 구역 종료 -->








		</div>
		<!-- 컨텐츠 구역 종료 -->


		<!-- 푸터 구역 시작 -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<!-- 푸터 구역 종료 -->

	</div>
	<!-- wrap 종료 -->

</body>
</html>
