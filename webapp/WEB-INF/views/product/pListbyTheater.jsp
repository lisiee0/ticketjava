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
<link href="${pageContext.request.contextPath}/assets/css/product/productInfo.css" rel="stylesheet">


</head>

<body>
	<div id="wrap">
		<!-- header & nav -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 종료 -->
		
		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">
			<div class="container"> 
				<div class="row">
					<h2 class="pageMenu section">공연장정보</h2>
					
					<div class="container section">
						<div class="row">
							<div class="col-xs-3"></div>
							
							<div class="col-xs-6 div-border">
								<!-- 공연장 로고 -->
								<div class="col-xs-4 np">
									<img id="logo" src="assets/image/theater-logo.png">
								</div>
								<div class="col-xs-8 theater-info">
									<p class="title">예술의전당</p><br>
									<p>주소 : 서울특별시 서초구 서초동 700번지</p>
									<p>대표전화 : 02-1234-5678</p>
									<p>홈페이지 : www.artcenter.co.kr</p>
								</div>
							</div>
							
							<div class="col-xs-3"></div>
						</div>
					</div>
					

					<div class="container">
						<div class="row">
						<h4 class="cateMenu">추천공연</h4>
							<ul class="nav navbar-nav">
								<li class="avail-product">
									<div class="avail-posterArea">
										<img class="avail-poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo avp">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
								
								<li class="avail-product">
									<div class="avail-posterArea">
										<img class="avail-poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo avp">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
								
								<li class="avail-product">
									<div class="avail-posterArea">
										<img class="avail-poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo avp">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
								
								<li class="avail-product">
									<div class="avail-posterArea">
										<img class="avail-poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo avp">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
								
								<li class="avail-product last">
									<div class="avail-posterArea">
										<img class="avail-poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo avp">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
							</ul>
						</div>
					</div>
					
					
					<div class="container">
						<div class="row">
						<h4 class="cateMenu">예매가능한공연</h4>
						
							<div class="container bgc">
								<div class="col-xs-3 poster-small-area np">
									<img class="poster-small" src="assets/image/aida.jpg">
								</div>
								
								<div class="col-xs-7 information">
									<p class="title">뮤지컬 <아이다> 인터네셔널 투어 (Musical (Aida) International Tour)</p>
									<p>2022.02.02 ~ 2022.05.05</p>
									<p>예술의전당</p>
								</div>
								
								<div class="col-xs-2 btn-area">
									<button type="button" class="btn btn-primary btn-position">예매하기</button>
								</div>
							</div>
							
							<div class="container bgc">
								<div class="col-xs-3 poster-small-area np">
									<img class="poster-small" src="assets/image/aida.jpg">
								</div>
								
								<div class="col-xs-7 information">
									<p class="title">뮤지컬 <아이다> 인터네셔널 투어 (Musical (Aida) International Tour)</p>
									<p>2022.02.02 ~ 2022.05.05</p>
									<p>예술의전당</p>
								</div>
								
								<div class="col-xs-2 btn-area">
									<button type="button" class="btn btn-primary btn-position">예매하기</button>
								</div>
							</div>
						</div>
					</div>
					
					<div class="container">
						<div id="mapInfo" class="row">
							<h4 class="cateMenu section">공연장 정보</h4>
							<div id="mapArea" class="col-xs-4">
								<img id="map" src="/project/assets/image/map.png">
							</div>
							<div class="col-xs-8">
								<p><strong>[공연장 정보]</strong></p><br>
								<p>장소: 홍익대 대학로 아트센터 대극장</p>
								<p>주소: 서울특별시 종로구 연건동 128-8 홍익대 대학로 아트센터</p>
								<p>대표번호: 02-1234-1234</p>
							</div>
						</div>
					</div>
				</div>		
			</div> 
		</div>
		<!-- 컨텐츠 구역 종료 -->


		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		
	</div>
	<!-- //wrap -->

</body>

</html>