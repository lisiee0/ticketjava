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
					
					<div class="container np">
						<div class="row section">
							<div class="floatLeft">
								<h2 class="pageMenu nm margintop">지역<small>전체</small></h2>
							</div>
							
							<div class="floatRight">
								<ul class="floatRight">
									<li class="regionList">전체</li>
									<li class="regionList">서울/경기</li>
									<li class="regionList">강원/충청</li>
									<li class="regionList">전라</li>
									<li class="regionList">경상/제주</li>
								</ul>
							</div>
						</div>
					</div>
				
				
					
					<div class="container">
						<div class="row">
							<ul class="nav navbar-nav">
							
								<c:forEach items="${allprod}" var="vo" varStatus="status">
									<c:choose>
										<c:when test="${status.count%4 eq 0}">
											<li class="list-width last">
												<div class="imgArea">
													<img class="poster" src="${pageContext.request.contextPath}/upload/${vo.posterPath}">
												</div>
												<div class="productInfo">
													<p class="text-left title"><strong>${vo.prodName}</strong></p>
													<p class="text-left">${vo.beginShow} ~ ${vo.endShow}</p>
													<p class="text-left">${vo.theaterName} ${vo.hallName}</p>
												</div>
											</li>
										</c:when>
										<c:otherwise>
											<li class="list-width">
												<div class="imgArea">
													<img class="poster" src="${pageContext.request.contextPath}/upload/${vo.posterPath}">
												</div>
												<div class="productInfo">
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
				</div>
			</div> 
		</div>
		<!-- 컨텐츠 구역 종료 -->

		
		
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		
	</div>
	<!-- //wrap -->

</body>

</html>