<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava Standard layout include</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">


<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>

<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">

<link href="${pageContext.request.contextPath}/assets/css/user/member.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/user/loginForm.css" rel="stylesheet">

</head>

<body>
	<div id="wrap">
		<!-- 헤더 header 구역 시작 (로그인 로고 검색창) -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>


		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">
			<div class="container zp">
				
				<div id="containerMain">
					<div></div>
					<div id="formArea">
						<form action="${pageContext.request.contextPath}/user/login" action="post">
							<input class="form-control" name="id" type="text" placeholder="아이디">
							<input class="form-control" name="password" type="password" placeholder="패스워드">
							<button id="loginBtn" class="form-control btn-primary" type="submit">로그인</button>
							<c:if test="${param.prodNo != null}">
								<input type="hidden" name="prodNo" value="${param.prodNo}">
							</c:if>
						</form>	
						<div id="helperArea">
							<button id="findId" class="form-control btn-default helper" type="button">아이디 찾기</button>
							<button id="findPassword" class="form-control btn-default helper" type="button">비밀번호 찾기</button>
							<button id="lastBtn" class="form-control helper" type="button">회원가입</button>
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
		<!-- 푸터 구역 종료 -->

	</div>
	<!-- wrap 종료 -->
	<input type="hidden" id="result" value="${param.result}">
	<input type="hidden" id="pageContext" value="${pageContext.request.contextPath}"> 
</body>

<script>
	var pageContext = $('#pageContext').val();
	if( $('#result').val() == 'fail'){
		alert('로그인 정보가 일치하지 않습니다.');
	}

	
	$('#findId').on('click',function(){
		location.href = pageContext+'/user/findId';
	});
	
	$('#findPassword').on('click',function(){
		location.href = pageContext+'/user/findPassword';
	});

	$('#lastBtn').on('click',function(){
		location.href=pageContext+'/user/joinForm';
	});
	
	
	
	
</script>
</html>
