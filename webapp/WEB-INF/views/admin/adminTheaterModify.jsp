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
						<div class="col-xs-12">
							<!-- content-head -->
							<div class="row">
								<h3 class="pageMenu adminsection">공연장 수정</h3>
							</div>
							<!-- //content-head -->
						</div>
						
						<div class="col-xs-12 np">
							<div id="board">
							
								<form action="" method="" class="form-horizontal">
	
	   								<!-- 공연장명 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
									    <label class="form-text col-xs-2" for="">공연장명</label>
									    <div class="col-xs-6">
									    	<input type="text" class="form-control" id="" placeholder="공연장명을 입력하세요">
									    </div>
									    <div class="col-xs-2"></div>
									</div>
	
	   								<!-- 시설명 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
									    <label class="form-text col-xs-2" for="">시설명</label>
									    <div class="col-xs-6">
									    	<!-- + 누르면 반복 -->
									    	<input type="text" class="form-control formZipcode" id="" placeholder="시설명">&nbsp;
									    	<br>
									    	
									    	<input type="text" class="form-control formZipcode" id="" placeholder="시설명">&nbsp;
									    	<br>
									    	
									    	<input type="text" class="form-control formZipcode" id="" placeholder="시설명">&nbsp;
									    	<span class="glyphicon glyphicon-plus"></span><br>
									    </div>
									    <div class="col-xs-2"></div>
									</div>

								
									<!-- 공연장 주소 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
									    <label class="form-text col-xs-2" for="">공연장주소</label>
									    <div class="col-xs-6">
									    	<input type="text" class="form-control col-xs-4 formZipcode" id="" placeholder="">
									    	<div class="col-xs-4"> </div>
									    	<button type="button" class="btn btn-primary col-xs-4 formZipcode">우편번호찾기</button>
									    	
									    	<input type="text" class="form-control formMargin" id="" placeholder="">
									    	<input type="text" class="form-control formMargin" id="" placeholder="">
									    </div>
									    <div class="col-xs-2"></div>
									</div>
									
									
									<!-- 대표번호 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
									    <label class="form-text col-xs-2" for="">대표번호</label>
									    <div class="col-xs-6">
									    	<input type="text" class="form-control" id="" placeholder="대표번호를 입력하세요">
									    </div>
									    <div class="col-xs-2"></div>
									</div>
									
									<!-- 홈페이지 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
									    <label class="form-text col-xs-2" for="">홈페이지</label>
									    <div class="col-xs-6">
									    	<input type="text" class="form-control" id="" placeholder="홈페이지를 입력하세요">
									    </div>
									    <div class="col-xs-2"></div>
									</div>
									
									<!-- 공연장사진 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
									    <label class="form-text col-xs-2" for="">공연장로고</label>
									    <div class="col-xs-6">
									    	<input type="file" id="file">
									    </div>
									    <div class="col-xs-2"></div>
									</div>
									
									<div id="btnLocation">
	                          			<button type="submit" class="btn btn-primary" id="addbtn">공연장 수정</button>
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