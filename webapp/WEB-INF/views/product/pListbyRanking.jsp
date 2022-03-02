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
		
		
		
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<h2 class="pageMenu section">랭킹</h2>
					
					<div class="container">
						<div class="row">
							<table class="rankingTable">
								<tr>
									<th>뮤지컬</th>
									<td class="btnArea"><span class="glyphicon glyphicon-chevron-left btnSize"></span><td>
									<td class="list-bgc">
										<ul class="nav navbar-nav">
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
										</ul>
									</td>
									<td><span class="glyphicon glyphicon-chevron-right btnSize lastbtn"></span></td>
								</tr>
							</table>
						</div>
						
						<div class="row">
							<table class="rankingTable">
								<tr>
									<th>연극</th>
									<td class="btnArea"><span class="glyphicon glyphicon-chevron-left btnSize"></span><td>
									<td class="list-bgc">
										<ul class="nav navbar-nav">
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
										</ul>
									</td>
									<td><span class="glyphicon glyphicon-chevron-right btnSize lastbtn"></span></td>
								</tr>
							</table>
						</div>
						
						<div class="row">
							<table class="rankingTable">
								<tr>
									<th>콘서트</th>
									<td class="btnArea"><span class="glyphicon glyphicon-chevron-left btnSize"></span><td>
									<td class="list-bgc">
										<ul class="nav navbar-nav">
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
										</ul>
									</td>
									<td><span class="glyphicon glyphicon-chevron-right btnSize lastbtn"></span></td>
								</tr>
							</table>
						</div>
						
						<div class="row">
							<table class="rankingTable">
								<tr>
									<th>스포츠</th>
									<td class="btnArea"><span class="glyphicon glyphicon-chevron-left btnSize"></span><td>
									<td class="list-bgc">
										<ul class="nav navbar-nav">
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
										</ul>
									</td>
									<td><span class="glyphicon glyphicon-chevron-right btnSize lastbtn"></span></td>
								</tr>
							</table>
						</div>
						
						<div class="row">
							<table class="rankingTable">
								<tr>
									<th>전시</th>
									<td class="btnArea"><span class="glyphicon glyphicon-chevron-left btnSize"></span><td>
									<td class="list-bgc">
										<ul class="nav navbar-nav">
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
											
											<li class="rank-list">
												<div>
													<img class="rank-poster" src="assets/image/aida.jpg">
												</div>
												<div>
													<p class="text-center"><strong>아이다</strong></p>
													<p class="text-center">세종문화회관 대극장</p>
												</div>
											</li>
										</ul>
									</td>
									<td><span class="glyphicon glyphicon-chevron-right btnSize lastbtn"></span></td>
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