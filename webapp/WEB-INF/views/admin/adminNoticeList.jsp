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
								<li class="menubar-line"><a href="${pageContext.request.contextPath}/admin/">공연장 목록</a></li>
								<li class="currentPage"><a href="${pageContext.request.contextPath}/admin/noticeList">공연장 공지사항</a></li>
							</ul>
						</div>
					</div>
					<!-- 어사이드 종료 -->
		
					<!-- .col-xs-10컨텐츠 출력 자리 시작 -->
					<div class="col-xs-10 admin-content">
						<!-- content-head -->
						<div class="col-xs-12 np">
							<h3 class="pageMenu adminsection">공연장 공지사항</h3>

							<a href="${pageContext.request.contextPath}/admin/noticeAdd" class="btn btn-primary position">공지사항 등록</a>
						</div>
						<!-- //content-head -->
				
						<!-- content body -->
						<div id="list">
							<table class="table listTable">
								<thead>
									<tr class="info">
										<th>공연장</th>
										<th>공지사항</th>
										<th>관리</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>예술의전당</td>
										<td>2022년 아티스트 공개 모집</td>
										<td><span class="glyphicon glyphicon-trash"></span></td>
									</tr>
									
									<tr>
										<td>예술의전당</td>
										<td>2022년 전반기 예산 사용계획</td>
										<td><span class="glyphicon glyphicon-trash"></span></td>
									</tr>
									
									<tr>
										<td>세종문화회관</td>
										<td>지하철 5호선 8번출구 유지보수공사 일정</td>
										<td><span class="glyphicon glyphicon-trash"></span></td>
									</tr>
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