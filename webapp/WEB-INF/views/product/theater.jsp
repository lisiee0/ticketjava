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
					
					<div class="container">
						<div class="row">
							<h2 class="pageMenu section">공연장</h2>
						</div>
					</div>
	
					<div class="container bgc">
						<div class="row">
							<ul class="nav navbar-nav pd">
							
								<c:forEach items="${theaterList}" var="vo" varStatus="status">
									<c:if test="${status.count%5 eq 0}">
										<li class="logoaArea">
											<div>
												<img class="theater-logo img-thumbnail img-rounded last-logo" data-no="${vo.theaterNo}" src="${pageContext.request.contextPath}/upload/${vo.logoPath}">
											</div>
										</li>
									</c:if>
									<li class="logoaArea">
										<div>
											<img class="theater-logo img-thumbnail img-rounded" data-no="${vo.theaterNo}" src="${pageContext.request.contextPath}/upload/${vo.logoPath}">
										</div>
									</li>
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
									<tr class="">
										<td><span class="glyphicon glyphicon-info-sign"></span>&nbsp;[예술의전당]2022년 아티스트 공개 모집</td>
									</tr>
									
									<tr class="">
										<td><span class="glyphicon glyphicon-info-sign"></span>&nbsp;[예술의전당]2022년 전반기 예산 사용계획</td>
									</tr>
									
									<tr class="">
										<td><span class="glyphicon glyphicon-info-sign"></span>&nbsp;[세종문화회관]지하철 5호선 8번출구 유지보수공사 계획</td>
									</tr>					
								</table>
							</div>
						
							<div class="col-xs-6">
								<h4 class="cateMenu">전국 공연장지도</h4>
								<img id="theater-map" src="/project/assets/image/theater-map.png">
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