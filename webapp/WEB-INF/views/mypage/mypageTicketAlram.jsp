<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava Standard layout include</title>

<!-- 부트스트랩 Bootstrap core CSS -->
<link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="assets/css/ticketjavaCommonAside.css" rel="stylesheet" type="text/css">
<link href="assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">

<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">

</head>

<style>
/* div 그리드 출력 (레이아웃 이해를 돕기 위한 코드) */
div {
	border: 0px solid black;
}
</style>

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
			

				<div class="row">
					<!-- .col-xs-2 어사이드 자리 시작 -->
					<div class="col-xs-2">

						<!-- aside -->
						<div id="container" class="clearfix">
							<div id="aside">
								<h2>마이페이지</h2>
								<ul>
									<li><h3>예매내역</h3></li>
									<li><a href="#">예매내역/취소</a></li>
									<li><a href="#">취소알림 내역</a></li>
								</ul>
								<ul>
									<li><h3>나의활동</h3></li>
									<li><a href="#">후기관리</a></li>
									<li><a href="#">문의내역</a></li>
								</ul>
							</div>
						</div>
						<!-- //aside -->
						
					
					</div> <!-- 어사이드 종료 -->

					<!-- .col-xs-10컨텐츠 출력 자리 시작 -->
					<div class="col-xs-10">


						<!-- content -->
						<div id="content">

						<!-- content-head -->
						<div id="content-head">
							<h3>취소알림 내역</h3>
							<div id="location">
								<ul>
									<li>홈</li>
									<li>마이페이지</li>
									<li class="last">취소알림 내역</li>
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
											<th>번호</th><!-- 예매취소 알림번호 -->
											<th>상품명</th>
											<th>좌석구분</th>
											<th>예매일</th>
											<th>관람일/매수</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>123</td>
											<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
											<td>B구역</td>
											<td>2020-12-10</td>
											<td>2020-12-23/2매</td>
										</tr>

										<tr>
											<td>123</td>
											<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
											<td>A구역</td>
											<td>2020-12-11</td>
											<td>2020-12-25/2매</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>


						<!-- content-head -->
						<div id="content-head">
							<h3>취소알림 신청</h3>
							<div class="clear"></div>
						</div>
						<!-- //content-head -->

						<div id="board">
							<div id="list">
								<table>
									<thead>
										<tr>
											<th>번호</th><!-- 취소알림 신청번호 -->
											<th>알림신청일</th>
											<th>상품명</th>
											<th>좌석/구역</th>
											<th>알림간격</th>
											<th>알림상태</th>
										</tr>
									</thead>
									<tbody>
										<form action="" name="" method="get">
										<tr>
											
												<td>123</td>
												<td>2020-12-15</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>A</td>
												<td><select name="alertDuration">
														<option name="10min" value="10min">10분</option>
														<option name="1hour" value="60min">1시간</option>
														<option name="2hour" value="120min">2시간</option>
														<option name="6hour" value="360min">6시간</option>
														<option name="12hour" value="720min">12시간</option>
												</select>

													<button type="button" class="btn btn-primary">변경</button></td>
												<td><img src="assets/image/bell-off.png">
												<button type="button" class="btn btn-primary">설정변경</button></td>
											
										</tr>
									</form>
										<tr>
											
												<td>123</td>
												<td>2020-12-15</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>B, C</td>
												<td><select name="alertDuration">
														<option name="10min" value="10min">10분</option>
														<option name="1hour" value="60min">1시간</option>
														<option name="2hour" value="120min">2시간</option>
														<option name="6hour" value="360min">6시간</option>
														<option name="12hour" value="720min">12시간</option>
												</select>

													<button type="button" class="btn btn-primary">변경</button></td>
												<td><img src="assets/image/bell-normal.png">
												<button type="button" class="btn btn-primary">설정변경</button></td>
											</form>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
						<!-- //content body -->

						</div>
						<!-- //content -->




					</div> <!-- 컨텐츠 종료 -->
					
				</div> 
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
