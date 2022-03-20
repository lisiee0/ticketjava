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
								<c:choose>
									<c:when test="${param.cateNo eq 1}"><h2 class="pageMenu nm margintop">지역<small>서울/경기</small></h2></c:when>
									<c:when test="${param.cateNo eq 2}"><h2 class="pageMenu nm margintop">지역<small>강원/충청</small></h2></c:when>
									<c:when test="${param.cateNo eq 3}"><h2 class="pageMenu nm margintop">지역<small>전라</small></h2></c:when>
									<c:when test="${param.cateNo eq 4}"><h2 class="pageMenu nm margintop">지역<small>경상/제주</small></h2></c:when>
									<c:otherwise><h2 class="pageMenu nm margintop">지역<small>전체</small></h2></c:otherwise>
								</c:choose>
							</div>
							
							<div class="floatRight">
								<ul class="floatRight">
									<li class=${param.cateNo eq 0 ? "regionList-sel" : "regionList"}><a href="${pageContext.request.contextPath}/product/region?cateNo=0">전체</a></li>
									<li class=${param.cateNo eq 1 ? "regionList-sel" : "regionList"}><a href="${pageContext.request.contextPath}/product/region?cateNo=1">서울/경기</a></li>
									<li class=${param.cateNo eq 2 ? "regionList-sel" : "regionList"}><a href="${pageContext.request.contextPath}/product/region?cateNo=2">강원/충청</a></li>
									<li class=${param.cateNo eq 3 ? "regionList-sel" : "regionList"}><a href="${pageContext.request.contextPath}/product/region?cateNo=3">전라</a></li>
									<li class=${param.cateNo eq 4 ? "regionList-sel" : "regionList"}><a href="${pageContext.request.contextPath}/product/region?cateNo=4">경상/제주</a></li>
								</ul>
							</div>
						</div>
					</div>
				w
				
					
					<div class="container">
						<div class="row">
							<ul class="nav navbar-nav">
							
								<c:forEach items="${allprod.vo}" var="vo" varStatus="status">
									<c:choose>
										<c:when test="${status.count%4 eq 0}">
											<li class="list-width last">
												<div class="imgArea">
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${vo.prodNo}"><img class="poster" src="${pageContext.request.contextPath}/upload/${vo.posterPath}"></a>
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
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${vo.prodNo}"><img class="poster" src="${pageContext.request.contextPath}/upload/${vo.posterPath}"></a>
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
						
						<!-- 페이징 -->
						<div class="row paging">				
							<nav>
							  <ul class="pagination">
							  	<li><a href="javascript:PageMove(${allprod.paging.firstPageNo})"><span class="glyphicon glyphicon-triangle-left"></span></a></li>
								<li class= ${allprod.paging.pageNo eq allprod.paging.firstPageNo ? "disabled" : ""}><a href="javascript:PageMove(${allprod.paging.prevPageNo})"><span class="glyphicon glyphicon-menu-left"></span></a></li>
					
								<c:forEach var="i" begin="${allprod.paging.startPageNo}" end="${allprod.paging.endPageNo}" step="1">
									<c:choose>
										<c:when test="${i eq allprod.paging.pageNo}">
											<li class= ${allprod.paging.pageNo eq i ? "active" : ""}><a href="javascript:PageMove(${i})">${i}</a></li>
										</c:when>
										<c:otherwise>
											<li class= ${allprod.paging.pageNo eq i ? "active" : ""}><a href="javascript:PageMove(${i})">${i}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								
							    <li class= ${allprod.paging.pageNo eq allprod.paging.finalPageNo ? "disabled" : ""}><a href="javascript:PageMove(${allprod.paging.nextPageNo})"><span class="glyphicon glyphicon-menu-right"></span></a></li>
							    <li><a href="javascript:PageMove(${allprod.paging.finalPageNo})"><span class="glyphicon glyphicon-triangle-right"></span></a></li>
							  </ul>
							</nav>
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

<script>

	function PageMove(page) {
		location.href = "${pageContext.request.contextPath}/product/region?cateNo=${param.cateNo}&crtPage=" + page;	
	}

</script>

</html>