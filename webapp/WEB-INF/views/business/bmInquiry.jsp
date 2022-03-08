<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava Standard layout include</title>

<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonAside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">

<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="${pageContext.request.contextPath}/assets/css/bm/bmInquiry.css" rel="stylesheet" type="text/css">


</head>


<body>
	<div id="wrap">
		<!-- header & nav -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 종료 -->


		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">
			<div class="container zp">

				<!-- .col-xs-2 어사이드 자리 시작 -->
				<!-- aside -->
				<div id="container" class="col-xs-2 clearfix zp no-drag no-ghost">
					<div id="aside">
						<h2>사업자 페이지</h2>
						<ul>
							<li><h3>공연 관리</h3></li>
							<li><a href="#">공연 등록</a></li>
							<li><a href="#">공연 수정</a></li>
						</ul>
						<ul>
							<li><h3>문의 관리</h3></li>
							<li><a href="#">문의내역</a></li>
						</ul>
					</div>
				</div>
				<!-- //aside -->


				<!-- 어사이드 종료 -->

				<!-- .col-xs-10컨텐츠 출력 자리 시작 -->
				<div class="col-xs-10 zp">


					<!-- content -->
					<div id="content">

						<!-- content-head -->
						<div id="content-head">
							<h3>공연 목록</h3>
							<div id="location">
								<ul>
									<li>홈</li>
									<li>사업자 페이지</li>
									<li class="last">공연 목록</li>
								</ul>
							</div>
							<div class="clear">
								<!-- 파란줄 출력 -->
							</div>
						</div>
						<!-- //content-head -->

						<!-- content body -->
						<div id="board">
							<div id="list">
								<table>
									<colgroup>
										<col style="width: 8%;">
										<col style="width: 23%;">
										<col style="">
										<col style="">
										<col style="">
										<col style="width: 15%">
										<col style="width: 7%;">
										<col style="width: 7%;">
									</colgroup>
									<thead>
										<tr>
											<th>공연 번호</th>
											<th>공연명</th>
											<th>공연장</th>
											<th>공연 기간</th>
											<th>공연 노출</th>
											<th>할인 정보</th>
											<th>수정</th>
											<th>삭제</th>
										</tr>
									</thead>
									<form action="" name="" method="get">
										<tbody>
											<tr>
												<td>002</td>
												<td class=""><a href="#" name="prodName">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td><a href="#" name="theaterName">세종문화회관</a></td>
												<td>20-01-01 ~ 20-01-10</td>
												<td><input type="checkbox"> <a href="#">확인</a></td>
												<td><a href="${pageContext.request.contextPath}/bm/bmDisAdd?prodNo=1">이벤트 할인 추가</a></td>
												<td><a href="#">수정</a></td>
												<td><a href="#">삭제</a></td>
											</tr>

										</tbody>
									</form>
								</table>

								<div id="row" class="searchBox">
									<div class="col-xs-8"></div>
									<div class="col-xs-2">
										<input type="text" class="form-control formSearchBoard" placeholder="공연 검색창" value="">
									</div>
									<div class="col-xs-2">
										<a href="${pageContext.request.contextPath}/bm/bmAdd" class="btn btn-primary position">공연 등록</a>
									</div>

								</div>
							</div>
						</div>
						<!-- //content body -->

					</div>
					<!-- //content -->

				</div>
				<!-- .col-xs-10컨텐츠 출력 자리 종료 -->

			</div>
			<!-- container 종료 -->
		</div>
		<!-- 컨텐츠 구역 종료 -->

		<!-- footer -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>



	</div>
	<!-- wrap 종료 -->

</body>
</html>
