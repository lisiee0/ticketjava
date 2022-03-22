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
		
		
		
		<div id="bc" class="container-fluid">
			<div class="container">
				<div class="row">
					<h2 class="pageMenu section">랭킹</h2>
					
					<div class="container">
						<div class="row">
							<table class="rankingTable">
								<tr>
									<th>뮤지컬</th>
									<td class="btnArea"><td>
									<td class="list-bgc">
										<ul class="nav navbar-nav">
											<c:forEach items="${rank.musical}" var="vo" varStatus="status">
												<li class="rank-list">
													<div>
														<span class= ${status.count le 3 ? "flagtop" : "flag"}>${status.count}</span>
														<a href="${pageContext.request.contextPath}/product/info?prodNo=${vo.prodNo}"><img class="rank-poster" src="${pageContext.request.contextPath}/upload/${vo.posterPath}"></a>
													</div>
													<div>
														<p class="text-center title"><strong>${vo.prodName}</strong></p>
														<p class="text-center">${vo.theaterName} ${vo.hallName}</p>
													</div>
												</li>
											</c:forEach>
										</ul>
									</td>
									<td></td>
								</tr>
							</table>
						</div>
						
						<div class="row">
							<table class="rankingTable">
								<tr>
									<th>연극</th>
									<td class="btnArea"><td>
									<td class="list-bgc">
										<ul class="nav navbar-nav">
											<c:forEach items="${rank.play}" var="vo" varStatus="status">
												<li class="rank-list">
													<div>
														<span class= ${status.count le 3 ? "flagtop" : "flag"}>${status.count}</span>
														<a href="${pageContext.request.contextPath}/product/info?prodNo=${vo.prodNo}"><img class="rank-poster" src="${pageContext.request.contextPath}/upload/${vo.posterPath}"></a>
													</div>
													<div>
														<p class="text-center title"><strong>${vo.prodName}</strong></p>
														<p class="text-center">${vo.theaterName} ${vo.hallName}</p>
													</div>
												</li>
											</c:forEach>
										</ul>
									</td>
									<td></td>
								</tr>
							</table>
						</div>
						
						<div class="row">
							<table class="rankingTable">
								<tr>
									<th>콘서트</th>
									<td class="btnArea"><td>
									<td class="list-bgc">
										<ul class="nav navbar-nav">
											<c:forEach items="${rank.concert}" var="vo" varStatus="status">
												<li class="rank-list">
													<div>
														<span class= ${status.count le 3 ? "flagtop" : "flag"}>${status.count}</span>
														<a href="${pageContext.request.contextPath}/product/info?prodNo=${vo.prodNo}"><img class="rank-poster" src="${pageContext.request.contextPath}/upload/${vo.posterPath}"></a>
													</div>
													<div>
														<p class="text-center title"><strong>${vo.prodName}</strong></p>
														<p class="text-center">${vo.theaterName} ${vo.hallName}</p>
													</div>
												</li>
											</c:forEach>
										</ul>
									</td>
									<td></td>
								</tr>
							</table>
						</div>
						
						<div class="row">
							<table class="rankingTable">
								<tr>
									<th>스포츠</th>
									<td class="btnArea"><td>
									<td class="list-bgc">
										<ul class="nav navbar-nav">
											<c:forEach items="${rank.sports}" var="vo" varStatus="status">
												<li class="rank-list">
													<div>
														<span class= ${status.count le 3 ? "flagtop" : "flag"}>${status.count}</span>
														<a href="${pageContext.request.contextPath}/product/info?prodNo=${vo.prodNo}"><img class="rank-poster" src="${pageContext.request.contextPath}/upload/${vo.posterPath}"></a>
													</div>
													<div>
														<p class="text-center title"><strong>${vo.prodName}</strong></p>
														<p class="text-center">${vo.theaterName} ${vo.hallName}</p>
													</div>
												</li>
											</c:forEach>
										</ul>
									</td>
									<td></td>
								</tr>
							</table>
						</div>
						
						<div class="row">
							<table class="rankingTable">
								<tr>
									<th>전시</th>
									<td class="btnArea"><td>
									<td class="list-bgc">
										<ul class="nav navbar-nav">
											<c:forEach items="${rank.exhibition}" var="vo" varStatus="status">
												<li class="rank-list">
													<div>
														<span class= ${status.count le 3 ? "flagtop" : "flag"}>${status.count}</span>
														<a href="${pageContext.request.contextPath}/product/info?prodNo=${vo.prodNo}"><img class="rank-poster" src="${pageContext.request.contextPath}/upload/${vo.posterPath}"></a>
													</div>
													<div>
														<p class="text-center title"><strong>${vo.prodName}</strong></p>
														<p class="text-center">${vo.theaterName} ${vo.hallName}</p>
													</div>
												</li>
											</c:forEach>
										</ul>
									</td>
									<td></td>
								</tr>
							</table>
						</div>

					</div>
				</div>
			</div>
		</div>
		
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>	
		
	</div>
	<!-- //wrap -->

</body>


</html>