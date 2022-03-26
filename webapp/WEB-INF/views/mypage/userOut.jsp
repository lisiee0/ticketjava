<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 마이페이지 회원탈퇴</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">


<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonAside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">

<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="${pageContext.request.contextPath}/assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/mypage/mypageUserInfo.css" rel="stylesheet">

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
								<h3>회원 탈퇴</h3>
								<div id="location">
									<ul>
										<li>홈</li>
										<li>마이페이지</li>
										<li class="last">회원탈퇴</li>
									</ul>
								</div>
								<div class="clear"></div>
							</div>
							<!-- //content-head -->

							<!-- content body -->
							<article id="content-body">

							<div class="userOutnotice">
								<div>
									<h3>이용에 불편을 드려 죄송합니다</h3>
								</div>
								<div>
									<h4>회원탈퇴시 혜택은 소멸하고, 가입정보는 즉시 파기되어 복구불가 합니다.</h4>
								</div>
							</div>

							<section id="containerMain">
								<div></div>
								<div id="formArea">
									<table>
										<colgroup>
											<col style="width: 25%">
											<col style="">
											<col style="">
											<col style="width: 25%">
										</colgroup>

										<tr>
											<th>아이디</th>
											<td colspan="3"><input class="form-control" type="text" placeholder="guest1234"></td>

										</tr>

										<tr>
											<th>비밀번호</th>
											<td colspan="3"><input class="form-control" type="password" placeholder="현재 비밀번호를 입력하세요"></td>
										</tr>

										<tr>
											<th></th>
											<td colspan="3"><input class="form-control" type="password" placeholder="비밀번호를 다시 입력하세요"></td>
										</tr>

										<tr>
											<td colspan="4"><label class="checkbox-inline"> <input type="checkbox" value="option1"> 탈퇴에 동의 하시면 체크박스를 선택 해주세요.
											</label></td>
										</tr>
										<tr>
											<td colspan="4"><button id="joinBtn" class="form-control btn-primary">티켓자바와 이별하기</button></td>
										</tr>
									</table>
								</div>


								<div></div>

							</section>
							<!-- //containerMain  -->

							</article>
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
