<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 마이페이지 회원정보수정</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">


<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/postcode/daumPostcode.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/user/joinForm.js"></script>

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


						<section id="containerMain">
							<div></div>
							<div id="formArea">
							<form action="${pageContext.request.contextPath}/user/userModifyAction" method="get">
								<table>
									<colgroup>
										<col style="width: 25%">
										<col style="">
										<col style="">
										<col style="width: 25%">
									</colgroup>
									
									<%-- <tr>
										<th>아이디</th>
										<td colspan="3"><input class="form-control" type="text" name="id" placeholder="${authUser.id}"></td>
										<td class="outlineBtn"></td>
									</tr> --%>
									
									<%-- <tr>
										<th> </th>
										<td colspan="3">이름: ${authUser.name } 아이디:${authUser.id} 번호(${authUser.userNo })님의 회원정보</td>
									</tr> --%>

									<tr>
										<th>비밀번호</th>
										<td colspan="3"><input class="form-control" type="password" name="passwordOld" placeholder="현재 비밀번호를 입력하세요" autofocus></td>
									</tr>

									<tr>
										<th>비밀번호 변경</th>
										<td colspan="3"><input type="checkbox"> 비밀번호 변경하려면 체크박스를 선택 해주세요.</td>
									</tr>

									<tr>
										<th></th>
										<td colspan="3"><input class="form-control" type="password" name="password" placeholder="변경할 비밀번호를 입력하세요"></td>
									</tr>

									<tr>
										<th></th>
										<td colspan="3"><input class="form-control" type="password" name="password2" placeholder="변경할 비밀번호를 다시 입력하세요"></td>
									</tr>

									<tr>
										<th>전화번호</th>
										<td colspan="3"><input class="form-control" type="text" name="phone" placeholder="01012345678"></td>
									</tr>

									<tr>
										<th>주소</th>
										<td><input class="form-control" type="text" name="postcode"  id="sample6_postcode" placeholder="우편번호" readonly></td>
										<td colspan="2" class="outlineBtn">
											<button class="form-control btn-outline-primary" type="button" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
										</td>
									</tr>
								
									<tr>
										<td></td>
										<td colspan="3"><input id="sample6_address" name="address" class="form-control" type="text" placeholder="주소" readonly></td>
									</tr>
									
									<tr>
										<td></td>
										<td colspan="3"><input id="sample6_detailAddress" name="address2" class="form-control" type="text" placeholder="상세주소"></td>
									</tr>
									
									<tr>
										<th>이메일</th>
										<td colspan="2"><input id="email" class="form-control"  name="email" type="text" placeholder="이메일"></td>
										<td class="outlineBtn"><button id="sendMailBtn" class="form-control btn-outline-primary" type="button">인증번호 발송</button></td>
									</tr>
									
									<tr id="keyArea">
										<!-- <th></th>
										<td colspan="2"><input id="authKey" class="form-control" type="text" placeholder="인증번호"></td>
										<td class="outlineBtn"><button id="checkKeyBtn" class="form-control btn-outline-primary" type="button">확인</button></td> -->
									</tr>

									<tr>
										<td colspan="4">
											<label class="checkbox-inline">
										  <input type="checkbox" id="agreeCheck"> 회원정보 변경을 확인했습니다
										</label>
										</td>
									</tr>
									<tr>
										<td colspan="4"><button type="submit" id="joinBtn" class="form-control btn-primary">회원정보 수정</button></td>
									</tr>
								</table>
								<input type="hidden" name="userNo" value="${authUser.userNo}">
								</form>
							</div>


							<div></div>

						</section>
						<!-- //containerMain  -->





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
