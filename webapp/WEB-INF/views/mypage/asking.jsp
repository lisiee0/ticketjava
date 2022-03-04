<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 마이페이지 문의내역</title>

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
							<h3>문의내역</h3>
							<div id="location">
								<ul>
									<li>홈</li>
									<li>나의활동</li>
									<li class="last">문의내역</li>
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
									<thead>
										<tr>
											<th>예매번호</th>
											<th>상품명</th>
											<th>문의내용</th>
											<th>작성일</th>
											<th>답변</th>
										</tr>
									</thead>
									<form action="" name="" method="get">
										<tbody>

											<tr>
												<td>123</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>문의 드립니다</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 대기</a></td>
											</tr>

											<tr>
												<td>123</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>문의 드립니다</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 완료</a></td>
											</tr>

											<tr>
												<td>123</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>문의 드립니다</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 대기</a></td>
											</tr>

											<tr>
												<td>123</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>문의 드립니다</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 완료</a></td>
											</tr>

											<tr>
												<td>123</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>문의 드립니다</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 대기</a></td>
											</tr>

											<tr>
												<td>123</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>문의 드립니다</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 완료</a></td>
											</tr>

											<tr>
												<td>123</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>문의 드립니다</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 대기</a></td>
											</tr>

											<tr>
												<td>123</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>문의 드립니다</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 완료</a></td>
											</tr>

											<tr>
												<td>123</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>문의 드립니다</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 대기</a></td>
											</tr>

											<tr>
												<td>123</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>문의 드립니다</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 완료</a></td>
											</tr>


										</tbody>
									</form>
								</table>

								<div id="paging">
									<ul>
										<li><a href="">◀</a></li>
										<li><a href="">1</a></li>
										<li><a href="">2</a></li>
										<li><a href="">3</a></li>
										<li><a href="">4</a></li>
										<li class="active"><a href="">5</a></li>
										<li><a href="">6</a></li>
										<li><a href="">7</a></li>
										<li><a href="">8</a></li>
										<li><a href="">9</a></li>
										<li><a href="">10</a></li>
										<li><a href="">▶</a></li>
									</ul>

									<div class="clear"></div>
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
