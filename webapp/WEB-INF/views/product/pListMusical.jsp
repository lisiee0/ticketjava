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



				<!-- 영상 재생 구역 시작 -->
				<section class="productVideo">
					<div class="mainVideo">
						<!-- 영상재생이 안될때 대신 보여주는 이미지 -->
						<img src="${pageContext.request.contextPath}/assets/image/index/thumbnail_ticketjava_desktop.png">
						<video loop="" muted="" autoplay="" playsinline="" webkit-playsinline="true">
							<source type="video/mp4" src="assets/video/video_musical.mp4">
						</video>
					</div>

					<!-- 영상 코멘트 및 버튼 -->
					<div class="mainVideoOverlay">
						<div class="mainVideoComment">
							<h1>
								커튼콜이 곧<br>시작합니다
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


				<div class="row">
					<h2 class="pageMenu section">추천상품</h2>

					<div class="container">
						<div class="row">
							<ul class="nav navbar-nav">
								<c:forEach items="${type.topList}" var="tvo" varStatus="status">
									<c:choose>
										<c:when test="${status.count%4 eq 0}">
											<li class="list-width last">
												<div class="imgArea">
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${tvo.prodNo}"><img class="poster"
														src="${pageContext.request.contextPath}/upload/${tvo.posterPath}"
													></a>
												</div>
												<div class="productInfo">
													<p class="text-left title">
														<strong>${tvo.prodName}</strong>
													</p>
													<p class="text-left">${tvo.beginShow}~ ${tvo.endShow}</p>
													<p class="text-left">${tvo.theaterName}${tvo.hallName}</p>
												</div>
											</li>
										</c:when>
										<c:otherwise>
											<li class="list-width">
												<div class="imgArea">
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${tvo.prodNo}"><img class="poster"
														src="${pageContext.request.contextPath}/upload/${tvo.posterPath}"
													></a>
												</div>
												<div class="productInfo">
													<p class="text-left title">
														<strong>${tvo.prodName}</strong>
													</p>
													<p class="text-left">${tvo.beginShow}~ ${tvo.endShow}</p>
													<p class="text-left">${tvo.theaterName}${tvo.hallName}</p>
												</div>
											</li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</ul>
						</div>
					</div>

				</div>

				<div class="row">
					<h2 class="pageMenu section">전체상품</h2>

					<div class="container">
						<div class="row">
							<ul class="nav navbar-nav">
								<c:forEach items="${type.allList}" var="avo" varStatus="status">
									<c:choose>
										<c:when test="${status.count%4 eq 0}">
											<li class="list-width last">
												<div class="imgArea">
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${avo.prodNo}"><img class="poster"
														src="${pageContext.request.contextPath}/upload/${avo.posterPath}"
													></a>
												</div>
												<div class="productInfo">
													<p class="text-left title">
														<strong>${avo.prodName}</strong>
													</p>
													<p class="text-left">${avo.beginShow}~ ${avo.endShow}</p>
													<p class="text-left">${avo.theaterName}${avo.hallName}</p>
												</div>
											</li>
										</c:when>
										<c:otherwise>
											<li class="list-width">
												<div class="imgArea">
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${avo.prodNo}"><img class="poster"
														src="${pageContext.request.contextPath}/upload/${avo.posterPath}"
													></a>
												</div>
												<div class="productInfo">
													<p class="text-left title">
														<strong>${avo.prodName}</strong>
													</p>
													<p class="text-left">${avo.beginShow}~ ${avo.endShow}</p>
													<p class="text-left">${avo.theaterName}${avo.hallName}</p>
												</div>
											</li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</ul>
						</div>

					</div>
				</div>

			</div>
		</div>
		<!-- 컨텐츠 구역 종료 -->


		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

	</div>
	<!-- wrap 종료 -->

</body>

</html>