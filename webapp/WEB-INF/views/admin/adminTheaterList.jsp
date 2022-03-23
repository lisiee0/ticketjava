<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava include</title>

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
								<li class="currentPage menubar-line"><a href="${pageContext.request.contextPath}/admin/">공연장 목록</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/noticeList">공연장 공지사항</a></li>
							</ul>
						</div>
					</div>
					<!-- 어사이드 종료 -->
		
					<!-- .col-xs-10컨텐츠 출력 자리 시작 -->
					<div class="col-xs-10 admin-content">
						<!-- content-head -->
						<div class="col-xs-12 np">
							<h3 class="pageMenu adminsection">공연장 목록</h3>
							
							<div class="col-xs-12 np clearfix">
								<div class="position-left">
									<form action="${pageContext.request.contextPath}/admin/theaterSearch" method="post" class="adminform">
										<input type="text" class="form-control searchBtn" name="key" placeholder="공연장 검색">
										<button type="submit" class="btn btn-primary index-search adBtn"><span class="glyphicon glyphicon-search"></span></button>
									</form>
								</div>
								<a href="${pageContext.request.contextPath}/admin/theaterAddpage" class="btn btn-primary position">공연장 등록</a>
							</div>
						</div>
						<!-- //content-head -->
				
						<!-- content body -->
						<div id="list">
							<table class="table listTable table-hover">
							<colgroup>
								<col width="13%">
								<col width="13%">
								<col width="30%">
								<col width="13%">
								<col width="16%">
								<col width="15%">
							</colgroup>
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
									<c:forEach items="${hallList.hList}" var="vo">
										<tr>
											<td><strong>${vo.theaterName}</strong></td>
											<c:choose>
												<c:when test="${vo.hallName eq null}">
													<td>-</td>
												</c:when>
												<c:otherwise>
													<td>${vo.hallName}</td>
												</c:otherwise>
											</c:choose>
											<td class="text-center">${vo.address}<br>${vo.address2}</td>
											<td>${vo.phone}</td>
											<td id="space">${vo.homePage}</td>
											<td>
												<a href="${pageContext.request.contextPath}/admin/theaterModifyForm?hallNo=${vo.hallNo}"><span class="glyphicon glyphicon-pencil">수정</span></a>&nbsp;&nbsp;
												<a href="${pageContext.request.contextPath}/admin/theaterDelete?hallNo=${vo.hallNo}"><span class="glyphicon glyphicon-trash">삭제</span></a>
											</td>
										</tr>
									</c:forEach>
								</tbody>					
							</table>
							
							<!-- 페이징 -->
							<div class="row paging">				
								<nav>
								  <ul class="pagination">
								  	<li><a href="javascript:PageMove(${hallList.paging.firstPageNo})"><span class="glyphicon glyphicon-triangle-left"></span></a></li>
									<li class= ${hallList.paging.pageNo eq hallList.paging.firstPageNo ? "disabled" : ""}><a href="javascript:PageMove(${hallList.paging.prevPageNo})"><span class="glyphicon glyphicon-menu-left"></span></a></li>
						
									<c:forEach var="i" begin="${hallList.paging.startPageNo}" end="${hallList.paging.endPageNo}" step="1">
										<c:choose>
											<c:when test="${i eq hallList.paging.pageNo}">
												<li class= ${hallList.paging.pageNo eq i ? "active" : ""}><a href="javascript:PageMove(${i})">${i}</a></li>
											</c:when>
											<c:otherwise>
												<li class= ${hallList.paging.pageNo eq i ? "active" : ""}><a href="javascript:PageMove(${i})">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									
								    <li class= ${hallList.paging.pageNo eq hallList.paging.finalPageNo ? "disabled" : ""}><a href="javascript:PageMove(${hallList.paging.nextPageNo})"><span class="glyphicon glyphicon-menu-right"></span></a></li>
								    <li><a href="javascript:PageMove(${hallList.paging.finalPageNo})"><span class="glyphicon glyphicon-triangle-right"></span></a></li>
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
		location.href = "${pageContext.request.contextPath}/admin/?crtPage=" + page;
	}

</script>


</html>