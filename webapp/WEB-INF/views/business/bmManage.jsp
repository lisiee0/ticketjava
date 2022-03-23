<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava Standard layout include</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">


<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonAside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">

<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->

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
							<li><a href="${pageContext.request.contextPath}/bm/">공연 목록</a></li>
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
							<h3>문의내역</h3>
							<div id="location">
								<ul>
									<li>홈</li>
									<li>사업자 페이지</li>
									<li class="last">문의 내역</li>
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
										<col style="">
										<col style="width: 7%;">
									</colgroup>
									<thead>
										<tr>
											<th>공연 번호</th>
											<th>공연 명</th>
											<th>문의 내용</th>
											<th>사용자 ID</th>
											<th>작성일</th>
											<th>답변 여부</th>
											<th>삭제</th>
										</tr>
									</thead>
									<form action="" name="" method="get">
										<tbody>

											<tr>
												<td>001</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td><a href="#">문의 드립니다 </a></td>
												<td>abcde</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 대기</a></td>
												<td><a href="#">삭제</a></td>
											</tr>
											<tr>
												<td>001</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td><a href="#">문의 드립니다 </a></td>
												<td>abcde</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 대기</a></td>
												<td><a href="#">삭제</a></td>
											</tr>
											<tr>
												<td>001</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td><a href="#">문의 드립니다 </a></td>
												<td>abcde</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 완료</a></td>
												<td><a href="#">삭제</a></td>
											</tr>
											<tr>
												<td>001</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td><a href="#">문의 드립니다 </a></td>
												<td>abcde</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 완료</a></td>
												<td><a href="#">삭제</a></td>
											</tr>
											<tr>
												<td>001</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td><a href="#">문의 드립니다 </a></td>
												<td>abcde</td>
												<td>2020-12-23</td>
												<td><a href="#">답변 완료</a></td>
												<td><a href="#">삭제</a></td>
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
