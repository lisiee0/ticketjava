<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 마이페이지 후기관리</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">


<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonAside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">

<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="${pageContext.request.contextPath}/assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/mypage/mypageUserReview.css" rel="stylesheet" type="text/css">

<!-- 별점 디자인 css -->
<link href="${pageContext.request.contextPath}/assets/css/starRating.css" rel="stylesheet">

</head>


<body>
	<div id="wrap">

		<!-- 헤더 header 구역 시작 (로그인 로고 검색창) -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 구역 종료 -->

		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">
			<div class="container zp">


				<div class="row">
					<!-- .col-xs-2 어사이드 자리 시작 -->
					<div class="col-xs-2">


						<!-- aside -->
						<c:import url="/WEB-INF/views/include/asideMypage.jsp"></c:import>
						<!-- //aside -->


					</div>
					<!-- .col-xs-2 어사이드 종료 -->

					<!-- .col-xs-10컨텐츠 출력 자리 시작 -->
					<div class="col-xs-10">



						<!-- content -->
						<div id="content">

							<!-- content-head -->
							<div id="content-head">
								<h3>후기 관리</h3>
								<div id="location">
									<ul>
										<li>홈</li>
										<li>마이페이지</li>
										<li class="last">후기 관리</li>
									</ul>
								</div>
								<div class="clear"></div>
							</div>
							<!-- //content-head -->

							<!-- content body -->
							<div id="board">
								<div id="list">
									<table>
										<colgroup>
											<col width="5%">
											<col width="25%">
											<col width="25%">
											<col width="15%">
											<col width="15%">
											<col width="15%">
										</colgroup>
										<thead>
											<tr>
												<th>번호</th>
												<th>상품명</th>
												<th>후기내용</th>
												<th>평점</th>
												<th>작성일</th>
												<th>관리</th>
											</tr>
										</thead>

										<tbody>
											<c:forEach items="${review.pagingList}" var="vo">
												<tr>
													<td>${vo.reviewNo}</td>
													<td id="space" class="text-left"><a href="product/info?prodNo=${vo.prodNo}">${vo.prodName}</a></td>
													<td id="space">${vo.content}</td>
													<td>
														<div class="star-print"> <c:forEach var="i" begin="1" end="${vo.rating}"> ★ </c:forEach> </div>
													</td>
													<td>${vo.regDate}</td>
													<td>
													<button type="submit" class="btn btn-primary" onclick="location.href='userReviewModify?reviewNo=${vo.reviewNo}'">수정</button> 
													<button type="submit" class="btn btn-primary" onclick="location.href='userReviewDelete?reviewNo=${vo.reviewNo}'">삭제</button>
													</td>
												</tr>
											</c:forEach>
										</tbody>

									</table>
									
									<!-- 페이징 -->
									<div class="row paging">				
										<nav>
										  <ul class="pagination">
										  	<li><a href="javascript:PageMove(${review.paging.firstPageNo})"><span class="glyphicon glyphicon-triangle-left"></span></a></li>
											<li class= ${review.paging.pageNo eq review.paging.firstPageNo ? "disabled" : ""}><a href="javascript:PageMove(${review.paging.prevPageNo})"><span class="glyphicon glyphicon-menu-left"></span></a></li>
								
											<c:forEach var="i" begin="${review.paging.startPageNo}" end="${review.paging.endPageNo}" step="1">
												<c:choose>
													<c:when test="${i eq review.paging.pageNo}">
														<li class= ${review.paging.pageNo eq i ? "active" : ""}><a href="javascript:PageMove(${i})">${i}</a></li>
													</c:when>
													<c:otherwise>
														<li class= ${review.paging.pageNo eq i ? "active" : ""}><a href="javascript:PageMove(${i})">${i}</a></li>
													</c:otherwise>
												</c:choose>
											</c:forEach>
											
										    <li class= ${review.paging.pageNo eq review.paging.finalPageNo ? "disabled" : ""}><a href="javascript:PageMove(${review.paging.nextPageNo})"><span class="glyphicon glyphicon-menu-right"></span></a></li>
										    <li><a href="javascript:PageMove(${review.paging.finalPageNo})"><span class="glyphicon glyphicon-triangle-right"></span></a></li>
										  </ul>
										</nav>
									</div>


									<div id="row" class="searchBox">
										<div class="col-xs-8"></div>
										<div class="col-xs-2">
											<input type="text" class="form-control formSearchBoard" placeholder="문의내역 검색" value="">
										</div>
										<div class="col-xs-2">
											<form class="">
												<button type="submit" class="btn-primary formSearchBoardButton">검색</button>
											</form>
										</div>
									</div>
								</div>
								<!-- //list -->
							</div>
							<!-- //content body -->

						</div>
						<!-- //content -->


					</div>
					<!-- .col-xs-10 컨텐츠 종료 -->
				</div>
				<!-- 어사이드 컨텐츠 그리드 종료 -->
			</div>
			<!-- container 종료 -->
		</div>
		<!-- 컨텐츠 구역 종료 -->

		<!-- 푸터 구역 시작 -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<!-- 푸터 구역 종료 -->

	</div>
	<!-- wrap 종료 -->
</body>


<script>

	function PageMove(page) {

		location.href = "${pageContext.request.contextPath}/mypage/userReview?crtPage=" + page;	
	}

</script>


</html>
