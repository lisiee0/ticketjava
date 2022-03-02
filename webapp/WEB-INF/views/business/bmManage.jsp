<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">

<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="${pageContext.request.contextPath}/assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">

</head>


<body>
	<div id="wrap">
		<!-- 헤더 header 구역 시작 (로그인 로고 검색창) -->
		<div class="container-fluid zp">
			<div class="container">

				<div class="row">
					<!-- 로그인 회원가입 그리드 시작 -->
					<div class="col-xs-9"></div>
					<div class="col-xs-3 zp">
						<div id="header" class="clearfix no-drag no-ghost">
							<ul>
								<li><a href="#"><img src="assets/image/index/bell-normal.png"></a></li>
								<li><a href="#"><img src="assets/image/index/bell-new.png"></a></li>

								<li><a href="#">로그인</a></li>
								<li><a href="#">회원가입</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 로그인 회원가입 그리드 종료 -->

			</div>
			<!-- container 종료 -->


			<div class="container">
				<div class="row">

					<!-- 로고 검색자리 그리드 시작 -->
					<div class="col-xs-3 no-drag no-ghost" id="ticketJavaLogo">
						<a href=""><img src="assets/image/index/ticketjava_main_logo.png"></a>
					</div>
					<div class="col-xs-9" id="serachBar">
						<form class="form-horizontal">
							<input type="text" class="form-control dis vm" placeholder="내가 찾는 티켓은.." value="">
							<button type="submit" class="btn btn-primary index-search">티켓잡으러검색</button>
						</form>
					</div>

				</div>
				<!-- 로고 검색자리 그리드 종료 -->
			</div>
			<!-- container 종료 -->
		</div>
		<!-- 헤더 구역 종료 (로그인 로고 검색창) -->


		<!-- 네비바 구역 시작 -->
		<div class="container-fluid zp navbox">
			<div class="container nav">

				<!-- 네비바 자리 그리드없음 중앙 정렬 1000px 파란색 줄 -->
				<nav id="navnav" class="navbar navbar-expand-lg navbar-dark bg-primary btn-primary no-drag">
					<div id="navbar" class="" role="navigation">
						<ul class="clearfix">
							<li class="nav-item"><a href="">뮤지컬</a></li>
							<li class="nav-item"><a href="">연극</a></li>
							<li class="nav-item"><a href="">콘서트</a></li>
							<li class="nav-item"><a href="">스포츠</a></li>
							<li class="nav-item"><a href="">전시</a></li>
							<li class="nav-item"><a href=""><span class="smallFont">공연장</span></a></li>
							<li class="nav-item"><a href=""><span class="smallFont">지역</span></a></li>
							<li id="last-nav-item" class="nav-item"><a href=""><span class="smallFont">랭킹</span></a></li>
						</ul>
					</div>
				</nav>

			</div>
			<!-- container 종료 -->
		</div>
		<!-- 네비바 구역 종료 -->


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


		<!-- 푸터 구역 시작 -->
		<div class="container-fluid zp footerbox">
			<div class="container zp" id="footer">

				<div class="footerLogo no-drag no-ghost">
					<img src="assets/image/index/ticketjava_footer_logo.png">
				</div>
				<div class="footerTitle">
					<h4>
						프로젝트 티켓자바 : 글로벌IT 팀프로젝트 3조
						</h3>
						<h3>개발자 contacts</h3>
				</div>
				<div class="footerContacts form-horizontal">

					<div class="form-group">
						<label class="col-md-2 form-text text-large bold">08_홀수_서한규</label> <span class="col-md-2">| copymach</span> <span class="col-md-2">https://github.com/copymach</span> <span class="col-md-6"></span>
					</div>

					<div class="form-group">
						<label class="col-md-2 form-text text-large bold">14_홀수_유호준</label> <span class="col-md-2">| lisiee0</span> <span class="col-md-2">https://github.com/lisiee0</span> <span class="col-md-6"></span>
					</div>

					<div class="form-group">
						<label class="col-md-2 form-text text-large bold">20_홀수_이원준</label> <span class="col-md-2">| squirrelchipmunk</span> <span class="col-md-2">https://github.com/squirrelchipmunk</span> <span class="col-md-6"></span>
					</div>

					<div class="form-group">
						<label class="col-md-2 form-text text-large bold">04_홀수_구민석</label> <span class="col-md-2">| 9Mzz</span> <span class="col-md-2">https://github.com/9Mzz</span> <span class="col-md-6"></span>
					</div>
				</div>

				<div class="footerComments">
					<table>
						<tr>
							<td>Own your Ticket!</td>
						</tr>
						<tr>
							<td>We are glad to help getting The Ticket with The TicketJava.</td>
						</tr>
						<tr>
							<td>Thank you for visit The TicketJava.</td>
						</tr>
						<tr>
							<td>This Website had build by 4men with The Passion at 2022 Feb.</td>
						</tr>
						<tr>
							<td>The TicketJava team has All of rights reserved.</td>
						</tr>
					</table>
				</div>
			</div>
			<!-- 푸터 내용 종료 -->
		</div>
		<!-- 푸터 구역 종료 -->

	</div>
	<!-- wrap 종료 -->

</body>
</html>
