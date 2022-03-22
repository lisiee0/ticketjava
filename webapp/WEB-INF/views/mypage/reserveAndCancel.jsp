<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 마이페이지 예매내역 및 취소</title>

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

<link href="${pageContext.request.contextPath}/assets/css/mypage/mypageTicketingAndCancel.css" rel="stylesheet" type="text/css">


<!-- 년월일 선택 하는 스크립트 -->
<script src="http://code.jquery.com/jquery-1.9.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/mypage/mypageTicketingAndCancel.js"></script>

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
										<li class="last">예매내역/취소</li>
									</ul>
								</div>
								<div class="clear"></div>
							</div>
							<!-- //content-head -->

							<!-- content body -->
							<div class="ticketingDate">
								<form action="" name="" method="get">
									<div>
										기간선택
										<!-- 1일을 기준으로 기간 날짜를 결정 1달 30일 페이지 기본값 7일-->
										<label for="rdo-duration">7일</label> <input type="radio" id="rdo-week" name="duration" value="7" checked> <label for="rdo-duration">1개월</label> <input
											type="radio" id="rdo-month" name="duration" value="30"
										> <label for="rdo-duration">3개월</label> <input type="radio" id="rdo-3month" name="duration" value="60">

									</div>
									<div>
										조회기간 <select name="durationType">
											<option value="">구분</option>
											<option value="TicketBuy">예매일</option>
											<option value="TicketUse">관람일</option>
										</select> <select id="yearBox" name="year"></select>
										<!-- yearBox는 클라의 현재 년도를 js로 받아와서 select방식 출력 -->
										<select id="monthBox" name="month">
											<option value="">해당월선택</option>
											<option value="1jan">01월</option>
											<option value="2feb">02월</option>
											<option value="3mar">03월</option>
											<option value="4apr">04월</option>
											<option value="5may">05월</option>
											<option value="6jun">06월</option>
											<option value="7">07월</option>
											<option value="8">08월</option>
											<option value="9">09월</option>
											<option value="10">10월</option>
											<option value="11">11월</option>
											<option value="12">12월</option>
										</select> <input type="date" value="2022-02-23">

										<button type="button" class="btn btn-primary">조회</button>
									</div>
								</form>
							</div>

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

<!-- 제이쿼리 core JavaScript 페이지 로딩 향상을 위해 해당코드는 body가 끝나는곳에 둘것 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


</html>
