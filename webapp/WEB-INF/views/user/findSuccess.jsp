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
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">

<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->

<link href="${pageContext.request.contextPath}/assets/css/login/member.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/login/findInfo.css" rel="stylesheet">


<body>
	<div id="wrap">
		<!-- 헤더 header 구역 시작 (로그인 로고 검색창) -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 구역 종료 -->


		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">
			<div class="container zp">

				<div id="containerMain">
					<div></div>
					<div id=formArea>
						<h1>계정정보 찾기</h1>
						<!-- Nav tabs -->
						<ul class="nav nav-tabs">
							<li class="active"><a href="">아이디 찾기</a></li>
							<li><a href="">비밀번호 찾기</a></li>
						</ul>

						<div id=findForm>

							<p>고객님의 정보와 일치하는 아이디 목록입니다.</p>
							<div id="findResult">
								<ul>
									<li class="clearfix">globalIT <span class="right">2021.01.01 가입</span>
									</li>
								</ul>
							</div>

							<div id="nextBtn">
								<button class="btn btn-default" type="button">로그인</button>
							</div>
						</div>

					</div>
					<div></div>
				</div>

			</div>
			<!-- container 종료 -->
		</div>
		<!-- 컨텐츠 구역 종료 -->


		<!-- 푸터 구역 시작 -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

	</div>
	<!-- wrap 종료 -->

</body>
</html>
