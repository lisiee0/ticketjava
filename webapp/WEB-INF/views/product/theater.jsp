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
<link href="${pageContext.request.contextPath}/assets/css/product/productInfo.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/indcom.css" rel="stylesheet">

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
					
					<div class="container bgc">
						<div class="row">
						
							<div class="col-xs-6 np">
								<h4 class="cateMenu">공연장 공지사항</h4>
								<table class="table">
									<c:forEach items="${listMap.nList}" var="vo">
										<tr>
											<td><span class="glyphicon glyphicon-info-sign"></span>&nbsp;[${vo.theaterName}] ${vo.content}</td>
										</tr>
									</c:forEach>
				
								</table>
							</div>
						
							<div class="col-xs-6">
								<h4 class="cateMenu">전국 공연장지도</h4>
								<img id="theater-map" src="${pageContext.request.contextPath}/assets/image/test/theater-map.png">
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