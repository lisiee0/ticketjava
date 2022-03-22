<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 마이페이지 후기관리</title>

<!-- 티잡 파비콘 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32.png">

<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonAside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">

<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="${pageContext.request.contextPath}/assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/mypage/mypageUserReview.css" rel="stylesheet" type="text/css">

</head>

<style>

/* 평점 출력용 골드스타 */
.star-print {
	float: center;
	text-align: center; 
	font-size: 2rem;
	width: 5em;
	-webkit-text-stroke-width: 1px;
	-webkit-text-stroke-color: #2b2a29;
	-webkit-text-fill-color: gold;
	
}

/* 평점 입력용 골드스타 */
.star-rating {
	display: flex;
	flex-direction: row-reverse;
	font-size: 2.25rem;
	line-height: 2.5rem;
	justify-content: space-around;
	padding: 0 0.2em;
	text-align: center;
	width: 5em;
}

.star-rating input {
	display: none;
}

.star-rating label {
	-webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
	-webkit-text-stroke-width: 1px;
	-webkit-text-stroke-color: #2b2a29;
	cursor: pointer;
}

.star-rating :checked ~ label {
	-webkit-text-fill-color: gold;
}

.star-rating label:hover, .star-rating label:hover ~ label {
	-webkit-text-fill-color: #fff58c;
}

/*평점 출력용 골드스타 (구 레드스타) */
.star {
	position: relative;
	font-size: 2rem;
	color: #dedede;
}

.star input {
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0;
	opacity: 0;
	cursor: pointer;
}

.star span {
	width: 0;
	position: absolute;
	left: 0;
	color: gold;
	overflow: hidden;
	pointer-events: none;
}
</style>


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
											<c:forEach items="${requestScope.rMap.reviewList}" var="reviewList">
												<tr>
													<td>${reviewList.reviewNo}</td>
													<td id="space" class="text-left"><a href="product/info?prodNo=${reviewList.prodNo}">${reviewList.prodName}</a></td>
													<td id="space">${reviewList.content}</td>
													<td>
														<div class="star-print"> <c:forEach var="i" begin="1" end="${reviewList.rating}"> ★ </c:forEach> </div>
													</td>
													<td>${reviewList.regDate}</td>
													<td>
													<button type="submit" class="btn btn-primary" onclick="location.href='#'">수정</button> 
													<button type="submit" class="btn btn-primary" onclick="location.href='userReviewDelete?reviewNo=${reviewList.reviewNo}'">삭제</button>
													</td>
												</tr>
											</c:forEach>
										</tbody>

									</table>



									<div id="paging">
										<ul>

											<c:if test="${requestScope.rMap.prev eq true}">
												<li><a href="${pageContext.request.contextPath}/mypage/userReview?crtPage=${requestScope.rMap.startPageBtnNo-1}&userNo=${requestScope.rMap.userNo}">◀</a></li>
											</c:if>

											<!-- 현재 페이지 볼드처리 -->
											<c:forEach begin="${requestScope.rMap.startPageBtnNo}" end="${requestScope.rMap.endPageBtnNo}" step="1" var="page">

												<li class=${rMap.crtPageNo eq page ? "active" : ""}><a href="${pageContext.request.contextPath}/mypage/userReview?crtPage=${page}">${page}</a></li>

											</c:forEach>

											<c:if test="${requestScope.rMap.next eq true}">
												<li><a href="${pageContext.request.contextPath}/mypage/userReview?crtPage=${requestScope.rMap.endPageBtnNo+1}">▶</a></li>
											</c:if>

										</ul>

										<div class="clear"></div>
									</div>
									<!-- //paging -->


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


</html>
