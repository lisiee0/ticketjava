<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 마이페이지 예매내역</title>

<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonAside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">

<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="${pageContext.request.contextPath}/assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">

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
								<h3>예매내역</h3>
								<div id="location">
									<ul>
										<li>홈</li>
										<li>마이페이지</li>
										<li class="last">예매내역</li>
									</ul>
								</div>
								<div class="clear"></div>
							</div>
							<!-- //content-head -->

							<!-- content body -->
							<div id="board">
								<div id="list">
									<table>
										<thead>
											<tr>
												<th>예매번호</th>
												<th>예매일</th>
												<th>상품명</th>
												<th>관람일/매수</th>
												<th>현재상태</th>
												<th>관리</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>123</td>
												<td>2020-12-23</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>2020-12-23/2매</td>
												<td>예매</td>
												<td><button type="button" class="btn btn-primary">취소</button></td>
											</tr>

											<tr>
												<td>123</td>
												<td>2020-12-23</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>2020-12-23/2매</td>
												<td>예매</td>
												<td><button type="button" class="btn btn-primary">취소</button></td>
											</tr>

											<tr>
												<td>123</td>
												<td>2020-12-23</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>2020-12-23/2매</td>
												<td>예매</td>
												<td><button type="button" class="btn btn-primary">취소</button></td>
											</tr>
										</tbody>
									</table>
								</div>
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
