<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 티켓자바 - 상품 리스트</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">


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
		<div id="bc" class="container-fluid zp">
			<div class="container">
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
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${tvo.prodNo}"><img class="poster" src="${pageContext.request.contextPath}/upload/${tvo.posterPath}"></a>
												</div>
												<div class="productInfo">
													<p class="text-left title"><strong>${tvo.prodName}</strong></p>
													<p class="text-left content">${tvo.beginShow} ~ ${tvo.endShow}</p>
													<p class="text-left content">${tvo.theaterName} ${tvo.hallName}</p>
												</div>
												<div class="boxShadow"></div>
											</li>
										</c:when>
										<c:otherwise>
											<li class="list-width">
												<div class="imgArea">
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${tvo.prodNo}"><img class="poster" src="${pageContext.request.contextPath}/upload/${tvo.posterPath}"></a>
												</div>
												<div class="productInfo">
													<p class="text-left title"><strong>${tvo.prodName}</strong></p>
													<p class="text-left content">${tvo.beginShow} ~ ${tvo.endShow}</p>
													<p class="text-left content">${tvo.theaterName} ${tvo.hallName}</p>
												</div>
												<div class="boxShadow"></div>
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
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${avo.prodNo}"><img class="poster" src="${pageContext.request.contextPath}/upload/${avo.posterPath}"></a>
												</div>
												<div class="productInfo">
													<p class="text-left title"><strong>${avo.prodName}</strong></p>
													<p class="text-left content">${avo.beginShow} ~ ${avo.endShow}</p>
													<p class="text-left content">${avo.theaterName} ${avo.hallName}</p>
												</div>
												<div class="boxShadow"></div>
											</li>
										</c:when>
										<c:otherwise>
											<li class="list-width">
												<div class="imgArea">
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${avo.prodNo}"><img class="poster" src="${pageContext.request.contextPath}/upload/${avo.posterPath}"></a>
												</div>
												<div class="productInfo">
													<p class="text-left title"><strong>${avo.prodName}</strong></p>
													<p class="text-left content">${avo.beginShow} ~ ${avo.endShow}</p>
													<p class="text-left content">${avo.theaterName} ${avo.hallName}</p>
												</div>
												<div class="boxShadow"></div>
											</li>
										</c:otherwise>	
									</c:choose>	
								</c:forEach>
							</ul>
						</div>
						
						<!-- 페이징 -->
						<div class="row paging">				
							<nav>
							  <ul class="pagination">
							  	<li><a href="javascript:PageMove(${type.paging.firstPageNo})"><span class="glyphicon glyphicon-triangle-left"></span></a></li>
								<li class= ${type.paging.pageNo eq type.paging.firstPageNo ? "disabled" : ""}><a href="javascript:PageMove(${type.paging.prevPageNo})"><span class="glyphicon glyphicon-menu-left"></span></a></li>
					
								<c:forEach var="i" begin="${type.paging.startPageNo}" end="${type.paging.endPageNo}" step="1">
									<c:choose>
										<c:when test="${i eq type.paging.pageNo}">
											<li class= ${type.paging.pageNo eq i ? "active" : ""}><a href="javascript:PageMove(${i})">${i}</a></li>
										</c:when>
										<c:otherwise>
											<li class= ${type.paging.pageNo eq i ? "active" : ""}><a href="javascript:PageMove(${i})">${i}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								
							    <li class= ${type.paging.pageNo eq type.paging.finalPageNo ? "disabled" : ""}><a href="javascript:PageMove(${type.paging.nextPageNo})"><span class="glyphicon glyphicon-menu-right"></span></a></li>
							    <li><a href="javascript:PageMove(${type.paging.finalPageNo})"><span class="glyphicon glyphicon-triangle-right"></span></a></li>
							  </ul>
							</nav>
						</div>
						
					</div>
				</div>
	
			</div> 
		</div>
		<!-- 컨텐츠 구역 종료 -->
		
		
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>	
		
	</div> <!-- wrap 종료 -->

</body>

<script>

	function PageMove(page) {

		location.href = "${pageContext.request.contextPath}/product/type?prodType=${param.prodType}&crtPage=" + page;	
	}

</script>



</html>