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
					<h2 class="pageMenu section">추천공연</h2>
					
					<div class="container">
						<div class="row">
							<ul class="nav navbar-nav">
								<li class="list-width">
									<div class="imgArea">
										<img class="poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
								
								<li class="list-width">
									<div class="imgArea">
										<img class="poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
								
								<li class="list-width">
									<div class="imgArea">
										<img class="poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
								
								<li class="list-width last">
									<div class="imgArea">
										<img class="poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
							</ul>
						</div>
					</div>
					
				</div>
				
				<div class="row">
					<h2 class="pageMenu section">전체공연</h2>
					
					<div class="container">
						<div class="row">
							<ul class="nav navbar-nav">
								<li class="list-width">
									<div class="imgArea">
										<img class="poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
								
								<li class="list-width">
									<div class="imgArea">
										<img class="poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
								
								<li class="list-width">
									<div class="imgArea">
										<img class="poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
								
								<li class="list-width last">
									<div class="imgArea">
										<img class="poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
								
								<li class="list-width">
									<div class="imgArea">
										<img class="poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
								
								<li class="list-width">
									<div class="imgArea">
										<img class="poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
								
								<li class="list-width">
									<div class="imgArea">
										<img class="poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
								
								<li class="list-width last">
									<div class="imgArea">
										<img class="poster" src="assets/image/aida.jpg">
									</div>
									<div class="productInfo">
										<p class="text-left title"><strong>아이다</strong></p>
										<p class="text-left">2021.12.31 ~ 2022.03.01</p>
										<p class="text-left">세종문화회관 대극장</p>
									</div>
								</li>
							</ul>
							
						</div>
						
					</div>
				</div>
	
			</div> 
		</div>
		<!-- 컨텐츠 구역 종료 -->
		
		
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>	
		
	</div> <!-- wrap 종료 -->
	
</body>

</html>