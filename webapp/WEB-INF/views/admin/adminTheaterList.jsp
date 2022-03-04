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
<link href="${pageContext.request.contextPath}/assets/css/admin/admin.css" rel="stylesheet">

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
					<!-- .col-xs-2 어사이드 자리 시작 -->
					<div class="col-xs-2 np">
						<div id="admin-aside">
							<h2 class="admin-pageMenu">관리페이지</h2>
							<ul class="clearfix">
								<li class="currentPage menubar-line">공연장 목록</li>
								<li>공연장 공지사항</li>
							</ul>
						</div>
					</div>
					<!-- 어사이드 종료 -->
		
					<!-- .col-xs-10컨텐츠 출력 자리 시작 -->
					<div class="col-xs-10 admin-content">
						<!-- content-head -->
						<div class="col-xs-12 np">
							<h3 class="pageMenu adminsection">공연장 목록</h3>

							<a href="${pageContext.request.contextPath}/admin/theaterAddpage" class="btn btn-primary position">공연장 등록</a>

						</div>
						<!-- //content-head -->
				
						<!-- content body -->
						<div id="list">
							<table class="table listTable">
								<thead>
									<tr class="info">
										<th>공연장명</th>
										<th>시설명</th>
										<th>주소</th>
										<th>대표번호</th>
										<th>홈페이지</th>
										<th>관리</th>
									</tr>
								</thead>
								<tbody id="tList">
									<c:forEach items="${tList}" var="vo">
										<tr>
											<td>${vo.theaterName}</td>
											<td>${vo.hallName}</td>
											<td class="text-center">${vo.address}<br>${vo.address2}</td>
											<td>${vo.phone}</td>
											<td>${vo.homePage}</td>
											<td>
												<span class="glyphicon glyphicon-pencil">수정</span>&nbsp;&nbsp;
												<span class="glyphicon glyphicon-trash">삭제</span>
											</td>
										</tr>
									</c:forEach>
								</tbody>					
							</table>
						</div>
						<!-- // content body -->
						
					</div>
					<!-- 컨텐츠 종료 -->
				</div>		
			</div> 
		</div>
		<!-- 컨텐츠 구역 종료 -->

		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

	</div>
	<!-- //wrap -->

</body>

</html>