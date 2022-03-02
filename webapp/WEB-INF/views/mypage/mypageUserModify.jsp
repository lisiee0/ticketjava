<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<link href="assets/css/login/member.css" rel="stylesheet">
<link href="assets/css/login/modifyForm.css" rel="stylesheet">


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
						
											
					</div> <!-- .col-xs-2 어사이드 종료 -->

					<!-- .col-xs-10컨텐츠 출력 자리 시작 -->
					<div class="col-xs-10">
					
					
						<!-- content-head -->
						<div id="content-head">
							<h3>회원정보수정</h3>
							<div id="location">
								<ul>
									<li>홈</li>
									<li>마이페이지</li>
									<li class="last">회원정보수정</li>
								</ul>
							</div>
							<div class="clear"></div>
						</div>
						<!-- //content-head -->
				
					
		<div id="containerMain">
			<div></div>
			<div id="formArea">
				<table>
					<colgroup>
						<col style="width:25%">
						<col style="">
						<col style="">
						<col style="width:25%">
					</colgroup>
					<tr>
						<th>아이디</th>
						<td colspan="3"><input class="form-control" type="text" placeholder="guest1234"></td>
						<td class="outlineBtn"></td>
					</tr>
					
					<tr>
						<th>비밀번호</th>
						<td colspan="3"><input class="form-control" type="password" placeholder="현재 비밀번호를 입력하세요" autofocus></td>
					</tr>
				
					<tr>
						<th>비밀번호 변경</th>
						<td colspan="3"><input type="checkbox"> 비밀번호 변경하려면 체크박스를 선택 해주세요.</td>
					</tr>
					
					<tr>
						<th></th>
						<td colspan="3"><input class="form-control" type="password" placeholder="변경할 비밀번호를 입력하세요"></td>
					</tr>					

					<tr>
						<th></th>
						<td colspan="3"><input class="form-control" type="password" placeholder="변경할 비밀번호를 다시 입력하세요"></td>
					</tr>					
					
					<tr>
						<th>전화번호</th>
						<td colspan="3"><input class="form-control" type="text" placeholder="01012345678"></td>
					</tr>
					
					<tr>
						<th>주소</th>
						<td><input class="form-control" type="text" placeholder="우편번호" readonly></td>
						<td colspan="2" class="outlineBtn"><button class="form-control btn-outline-primary" type="button">우편번호 찾기</button></td>
					</tr>
				
					<tr>
						<td></td>
						<td colspan="3"><input class="form-control" type="text" placeholder="주소"></td>
					</tr>
					
					<tr>
						<td></td>
						<td colspan="3"><input class="form-control" type="text" placeholder="상세주소"></td>
					</tr>
					
					<tr>
						<th>이메일</th>
						<td colspan="2"><input class="form-control" type="text" placeholder="이메일"></td>
						<td class="outlineBtn"><button class="form-control btn-outline-primary" type="button">인증번호 발송</button></td>
					</tr>
					
					<tr>
						<th></th>
						<td colspan="2"><input class="form-control" type="text" placeholder="인증번호"></td>
						<td class="outlineBtn"><button class="form-control btn-outline-primary" type="button">확인</button></td>
					</tr>
					
					<tr>
						<td colspan="4">
							<label class="checkbox-inline">
							  <input type="checkbox" value="option1"> 약관 동의
							</label>
						</td>
					</tr>
					<tr>
						<td colspan="4"><button id="joinBtn" class="form-control btn-primary">회원정보 수정</button></td>
					</tr>
				</table>
			</div>
			
			
			<div></div>
			
		</div>
		<!-- //containerMain  -->


					
					
					
					</div> <!-- .col-xs-10 컨텐츠 종료 -->
				</div>
				<!-- 어사이드 컨텐츠 그리드 종료 -->
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
