<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 티켓자바 - 공지사항 목록</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">



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

							<a href="${pageContext.request.contextPath}/admin/noticeAddForm" class="btn btn-primary position">공지사항 등록</a>
						</div>
						<!-- //content-head -->
				
						<!-- content body -->
						<div id="list">
							<table class="table listTable table-hover notice-table">
								<colgroup>
									<col width="14.5%">
									<col width="51%">
									<col width="20">
									<col width="14.5%">
								</colgroup>
								<thead>
									<tr class="info">
										<th>공연장명</th>
										<th>공지사항</th>
										<th>등록일</th>
										<th>관리</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${noticeList.notice}" var="vo">
										<tr>
											<td><strong>${vo.theaterName}</strong></td>
											<td>${vo.content}</td>
											<td>${vo.regDate}</td>
											<td>
												<a href="${pageContext.request.contextPath}/admin/noticeModifyForm?noticeNo=${vo.noticeNo}"><span class="glyphicon glyphicon-pencil">수정</span></a>&nbsp;&nbsp;
												<a href="${pageContext.request.contextPath}/admin/noticeDelete?noticeNo=${vo.noticeNo}"><span class="glyphicon glyphicon-trash">삭제</span></a>
											</td>
										</tr>
									</c:forEach>
								</tbody>					
							</table>
							
							<!-- 페이징 -->
							<div class="row paging">				
								<nav>
								  <ul class="pagination">
								  	<li><a href="javascript:PageMove(${noticeList.paging.firstPageNo})"><span class="glyphicon glyphicon-triangle-left"></span></a></li>
									<li class= ${noticeList.paging.pageNo eq noticeList.paging.firstPageNo ? "disabled" : ""}><a href="javascript:PageMove(${noticeList.paging.prevPageNo})"><span class="glyphicon glyphicon-menu-left"></span></a></li>
						
									<c:forEach var="i" begin="${noticeList.paging.startPageNo}" end="${noticeList.paging.endPageNo}" step="1">
										<c:choose>
											<c:when test="${i eq noticeList.paging.pageNo}">
												<li class= ${noticeList.paging.pageNo eq i ? "active" : ""}><a href="javascript:PageMove(${i})">${i}</a></li>
											</c:when>
											<c:otherwise>
												<li class= ${noticeList.paging.pageNo eq i ? "active" : ""}><a href="javascript:PageMove(${i})">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									
								    <li class= ${noticeList.paging.pageNo eq noticeList.paging.finalPageNo ? "disabled" : ""}><a href="javascript:PageMove(${noticeList.paging.nextPageNo})"><span class="glyphicon glyphicon-menu-right"></span></a></li>
								    <li><a href="javascript:PageMove(${noticeList.paging.finalPageNo})"><span class="glyphicon glyphicon-triangle-right"></span></a></li>
								  </ul>
								</nav>
							</div>
							
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


<script>

	function PageMove(page) {
		location.href = "${pageContext.request.contextPath}/admin/noticeList?crtPage=" + page;
	}

</script>

</html>