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



<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

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
					
					<div class="container">
						<div class="row">
							<h2 class="pageMenu section">공연장</h2>
						</div>
					</div>
	
					<div class="container bgc">
						<div class="row">
							<ul class="nav navbar-nav pd">
							
								<c:forEach items="${listMap.tList}" var="vo" varStatus="status">
									<c:choose>
										<c:when test="${status.count%5 eq 0}">
											<li class="last-logo">
												<div>
													<a href="${pageContext.request.contextPath}/product/listbyTheater?theaterNo=${vo.theaterNo}"><img class="theater-logo img-thumbnail img-rounded last-logo np" data-no="${vo.theaterNo}" src="${pageContext.request.contextPath}/upload/${vo.logoPath}"></a>
												</div>
											</li>
										</c:when>
										<c:otherwise>
											<li class="logoArea">
												<div>
													<a href="${pageContext.request.contextPath}/product/listbyTheater?theaterNo=${vo.theaterNo}"><img class="theater-logo img-thumbnail img-rounded np" src="${pageContext.request.contextPath}/upload/${vo.logoPath}"></a>
												</div>
											</li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								
							</ul>
						</div>
					</div>
					<!-- //공연장 로고 -->
					
					<div class="container">
						<div class="row">
						
							<div class="col-xs-7 np">
								<h3 class="b-cateMenu">기획공연</h3>
								<div id="myCarousel" class="carousel slide" data-ride="carousel">
									  	<!-- Indicators -->
									  	<ol class="carousel-indicators">
										    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
										    <li data-target="#myCarousel" data-slide-to="1"></li>
										    <li data-target="#myCarousel" data-slide-to="2"></li>
										    <li data-target="#myCarousel" data-slide-to="3"></li>
									  	</ol>
								
								  <!-- Wrapper for slides -->
								  <div class="carousel-inner" role="listbox">
									    <div class="item active">
									      <img src="${pageContext.request.contextPath}/assets/image/test/akxl.png" alt="">
									    </div>
								    
									    <div class="item">
									      <img src="${pageContext.request.contextPath}/assets/image/test/qnfrk.png" alt="">
									    </div>

								  
									  	<div class="item">
									      <img src="${pageContext.request.contextPath}/assets/image/test/qkffp.png" alt="">
									    </div>

								  
										<div class="item">
									      <img src="${pageContext.request.contextPath}/assets/image/test/tyaos.png" alt="">
									    </div>
	
									
									  <!-- Controls -->
									  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
									    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
									    <span class="sr-only">Previous</span>
									  </a>
									  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
									    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
									    <span class="sr-only">Next</span>
									  </a>
								</div>
							 </div>
							</div>
	
							<div class="col-xs-5 right-np">
								<h3 class="b-cateMenu">공연장 공지사항</h3>
								<table class="table">
									<c:forEach items="${listMap.nList}" var="vo">
										<tr>
											<td><span class="glyphicon glyphicon-info-sign"></span>&nbsp;&nbsp;[${vo.theaterName}]&nbsp; ${vo.content}</td>
										</tr>
									</c:forEach>
								</table>

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

<script>
	
	$('#myCarousel').carousel({
		interval: 2000
	})
	
		

</script>


</html>