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
									<img id="logo" src="${pageContext.request.contextPath}/upload/${map.vo.logoPath}">
								</div>
								<div class="col-xs-8 theater-info">
									<p class="title">${map.vo.theaterName}</p><br>
									<p>주소 : ${map.vo.address} ${map.vo.address2}</p>
									<p>대표전화 : ${map.vo.phone}</p>
									<p>홈페이지 : <a href="${map.vo.homePage}">${map.vo.homePage}</a></p>
								</div>
							</div>
							
							<div class="col-xs-3"></div>
						</div>
					</div>
					

					<div class="container">
						<div class="row">
						<h4 class="cateMenu">추천공연</h4>
							<ul class="nav navbar-nav">
								<c:forEach items="${map.top}" var="vo" varStatus="status">
									<c:choose>
										<c:when test="${status.count%5 eq 0}">
											<li class="avail-product last">
												<div class="avail-posterArea">
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${vo.prodNo}"><img class="avail-poster" src="${pageContext.request.contextPath}/upload/${vo.posterPath}"></a>
												</div>
												<div class="productInfo avp">
													<p class="text-left title"><strong>${vo.prodName}</strong></p>
													<p class="text-left">${vo.beginShow} ~ ${vo.endShow}</p>
													<p class="text-left">${vo.theaterName} ${vo.hallName}</p>
												</div>
											</li>
										</c:when>
										<c:otherwise>
											<li class="avail-product">
												<div class="avail-posterArea">
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${vo.prodNo}"><img class="avail-poster" src="${pageContext.request.contextPath}/upload/${vo.posterPath}"></a>
												</div>
												<div class="productInfo avp">
													<p class="text-left title"><strong>${vo.prodName}</strong></p>
													<p class="text-left">${vo.beginShow} ~ ${vo.endShow}</p>
													<p class="text-left">${vo.theaterName} ${vo.hallName}</p>
												</div>
											</li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</ul>
						</div>
					</div>
					
					
					<div class="container">
						<div class="row">
						<h4 class="cateMenu">예매가능한공연</h4>
							<c:forEach items="${map.avail}" var="vo">
								<div class="container bgc">
									<div class="col-xs-3 poster-small-area np">
										<a href="${pageContext.request.contextPath}/product/info?prodNo=${vo.prodNo}"><img class="poster-small" src="${pageContext.request.contextPath}/upload/${vo.posterPath}"></a>
									</div>
									
									<div class="col-xs-7 information">
										<p class="title">${vo.prodName}</p>
										<p>${vo.beginShow} ~ ${vo.endShow}</p>
										<p>${vo.theaterName} ${vo.hallName}</p>
									</div>
									
									<div class="col-xs-2 btn-area">
										<a href="${pageContext.request.contextPath}/product/info?prodNo=${vo.prodNo}" class="btn btn-primary btn-position">예매하기</a>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
					
					<div class="container">
						<div id="mapInfo" class="row">
							<h4 class="cateMenu section">공연장 정보</h4>
							<div id="mapArea" class="col-xs-4">
								<img id="map" src="${pageContext.request.contextPath}/assets/image/test/map.png">
							</div>
							<div class="col-xs-8">
								<p><strong>[공연장 정보]</strong></p><br>
								<p>장소: ${map.vo.theaterName}</p>
								<p>주소: ${map.vo.address} ${map.vo.address2}</p>
								<p>대표번호: ${map.vo.phone}</p>
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