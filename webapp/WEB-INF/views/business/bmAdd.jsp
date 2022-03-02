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
<link href="${pageContext.request.contextPath}/assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">


<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="assets/css/bm/mysite.css" rel="stylesheet">



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
						<form class="form-horizontal" action="" method="">
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
							<li><a href="#">문의 관리</a></li>
						</ul>
					</div>
				</div>
				<!-- //aside -->


				<!-- 어사이드 종료 -->

				<!-- .col-xs-10 컨텐츠 출력 자리 시작 -->
				<div class="col-xs-10 zp">
					<!-- content-head -->
					<div id="content-head">
						<h3>공연 등록</h3>
						<div id="location">
							<ul>
								<li>홈</li>
								<li>사업자 페이지</li>
								<li class="last">공연 등록</li>
							</ul>
						</div>
						<div class="clear">
							<!-- 파란줄 출력 -->
						</div>
					</div>
					<!-- //content-head -->

					<div id="board">

						<form action="" method="" class="form-horizontal">

							<!-- 공연장명 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연장명</label>
								<!-- 공연장명-->
								<div class="col-md-8">
									<div class="form-group">
										<div class="col-md-4">
											<input type="text" class="form-control" id="addWhere" placeholder="세종문화회관 1관" readonly>
										</div>
										<div class="col-md-3">
											<a href="#">
												<button type="button" class="btn btn-primary" id="addbtn">검색</button>
											</a>
										</div>
									</div>
								</div>
							</div>

							<!-- 공연 제목 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 제목</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="" placeholder="공연 제목을 입력해주세요">
								</div>
							</div>

							<!-- 공연 구분 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 구분</label>

								<div class="col-md-3">
									<select class="form-control">
										<option value="" selected="selected">연극</option>
										<option value="">뮤지컬</option>
										<option value="">콘서트</option>
										<option value="">스포츠</option>
										<option value="">전시</option>
									</select>
								</div>
							</div>

							<!-- 공연 기간 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 기간</label>
								<div class="col-md-4">
									<input type="text" class="form-control" id="" placeholder="시작일 2022/01/01">
								</div>
								<div class="col-md-4">
									<input type="text" class="form-control" id="" placeholder="종료일">
								</div>
							</div>

							<!--예매 기간 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">예매 기간</label>
								<div class="col-md-4">
									<input type="text" class="form-control" id="" placeholder="시작일 2022/01/01">
								</div>
								<div class="col-md-4">
									<input type="text" class="form-control" id="" placeholder="종료일">
								</div>
							</div>

							<!--공연 시작 시간-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 시작시간</label>
								<div class="col-md-4">
									<input type="text" class="form-control" id="" placeholder="공연 시작시간을 입력해주세요">
								</div>
							</div>

							<!--관람 시간-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">관람 시간</label>
								<div class="col-md-4">
									<input type="text" class="form-control" id="" placeholder="관람 시간을 입력해주세요">
								</div>
							</div>

							<!--관람 등급-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">관람 등급</label>
								<div class="col-md-1">
									<label for="all">전체</label> <input type="radio" id="ageall" name="" value="">
								</div>
								<div class="col-md-1">
									<label for="all">8세</label> <input type="radio" id="age8" name="age" value="">
								</div>
								<div class="col-md-1">
									<label for="all">12세</label> <input type="radio" id="age12" name="age" value="">
								</div>
								<div class="col-md-1">
									<label for="all">15세</label> <input type="radio" id="age15" name="age" value="">
								</div>
								<div class="col-md-1">
									<label for="all">18세</label> <input type="radio" id="age18" name="age" value="">
								</div>
							</div>

							<!--좌석등급별 가격-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">등급별 가격</label>
								<!-- 가격 -->
								<div class="col-md-8">
									<!-- VIP석 -->
									<div class="form-group">
										<div class="col-md-4">
											<input type="text" class="form-control" id="" placeholder="VIP석" readonly>
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control" id="" placeholder="140,000원">
										</div>
										<div class="col-md-1">
											<button type="button" class="btn" id="addbtn">-</button>
										</div>

									</div>
									<!-- R석 -->
									<div class="form-group">
										<div class="col-md-4">
											<input type="text" class="form-control" id="" placeholder="R석" readonly>
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control" id="" placeholder="120,000원">
										</div>
										<div class="col-md-1">
											<button type="button" class="btn" id="addbtn">-</button>
										</div>
									</div>
									<!-- S석 -->
									<div class="form-group">
										<div class="col-md-4">
											<input type="text" class="form-control" id="" placeholder="S석" readonly>
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control" id="" placeholder="80,000원">
										</div>
										<div class="col-md-1">
											<button type="button" class="btn" id="addbtn">-</button>
										</div>
									</div>
									<!-- A석 -->
									<div class="form-group">
										<div class="col-md-4">
											<input type="text" class="form-control" id="" placeholder="A석" readonly>
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control" id="" placeholder="50,000원">
										</div>
										<div class="col-md-1">
											<button type="button" class="btn" id="addbtn">-</button>
										</div>
									</div>
									<!-- 좌석끝 -->
									<!-- A석 -->
									<div class="form-group">
										<div class="col-md-4">
											<select class="form-control">
												<option value="">VIP석</option>
												<option value="">R석</option>
												<option value="">S석</option>
												<option value="">A석</option>
												<option value="">B석</option>
												<option value="" selected="selected">좌석</option>
											</select>
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control" id="" placeholder="80,000원">
										</div>
										<div class="col-md-1">
											<button type="button" class="btn" id="addbtn">+</button>
										</div>
									</div>

								</div>
							</div>

							<!--공지사항-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공지사항</label>
								<div class="col-md-8">
									<textarea id="" name="" class="form-control textWay" placeholder="내용을 입력해주세요"></textarea>
								</div>
							</div>

							<!-- 할인 정보 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">할인 정보</label>
								<!-- 정보-->
								<div class="col-md-8">
									<!-- VIP석 -->
									<div class="form-group">
										<div class="col-md-4">
											<input type="text" class="form-control" id="" placeholder="할인 구분">
										</div>
										<div class="col-md-3">
											<input type="text" class="form-control" id="" placeholder="할인율 (%)">
										</div>
										<div class="col-md-1"></div>
										<div class="col-md-1">
											<button type="button" class="btn" id="addbtn">+</button>
										</div>

									</div>
									<div class="form-group form-data">지역 거주자 할인(20%)</div>
									<div class="form-group form-data">재관람 할인(30%)</div>
								</div>
							</div>

							<!-- 공연 포스터 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 포스터</label>
								<div class="col-md-8">
									<input type="file" id="file">
								</div>
							</div>

							<!-- 공연 정보 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 정보</label>
								<div class="col-md-8">
									<input type="file" id="file">
								</div>
							</div>

							<!-- 캐스팅 정보 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">캐스팅 정보</label>
								<div class="col-md-8">
									<input type="file" id="file">
								</div>
							</div>

							<!-- 부가 정보 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">부가 정보</label>
								<div class="col-md-8">
									<input type="file" id="file">
								</div>
							</div>


							<!--예매/취소 안내-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">예매/취소 안내</label>
								<div class="col-md-8">
									<textarea id="" name="" class="form-control textWay" placeholder="내용을 입력해주세요"></textarea>
								</div>
							</div>

							<!-- 공연 등록! -->
							<div id="btnLocation">
								<button type="submit" class="btn btn-primary" id="addbtn">공연 등록</button>
							</div>

						</form>
					</div>

				</div>
				<!-- col-xs-10 컨텐츠 출력 자리 종료 -->

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
