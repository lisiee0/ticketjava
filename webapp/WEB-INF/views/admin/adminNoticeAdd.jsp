<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 티켓자바 - 공지사항 추가하기</title>

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
						<div class="col-xs-12">
							<!-- content-head -->
							<div class="row">
								<h3 class="pageMenu adminsection">공지사항 등록</h3>
							</div>
							<!-- //content-head -->
						</div>
						
						<div class="col-xs-12 np">
							<div id="board">
							
								<form action="${pageContext.request.contextPath}/admin/noticeAdd" method="post" class="form-horizontal">
	
									<!-- 공연장 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
									    <label class="form-text col-xs-2">공연장</label>
									    <div class="col-xs-6">
									    	<select class="form-control" name="theaterNo">
									    		<option selected>공연장을 선택해주세요.</option>
									    		<c:forEach items="${selectList}" var="vo">
									    			<option value="${vo.theaterNo}">${vo.theaterName}</option>
									    		</c:forEach>
									    	</select>
									    </div>
									    <div class="col-xs-2"></div>
									</div>
	
	   								<!-- 공지사항 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
									    <label class="form-text col-xs-2" for="">공지사항</label>
									    <div class="col-xs-6">
									    	<input type="text" class="form-control" name="content" placeholder="공지사항을 입력하세요">
									    </div>
									    <div class="col-xs-2"></div>
									</div>
									
									
									<div id="btnLocation">
	                          			<button type="submit" class="btn btn-primary" id="addbtn">공지사항 등록</button>
	                          		</div>
		                      </form>
								
							</div>
							<!-- content body -->
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