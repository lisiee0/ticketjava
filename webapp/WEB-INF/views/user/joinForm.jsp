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
<link href="${pageContext.request.contextPath}/assets/css/login/joinForm.css" rel="stylesheet">

</head>


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
								<td colspan="2"><input class="form-control" type="text" placeholder="아이디"></td>
								<td class="outlineBtn"><button class="form-control btn-outline-primary" type="button">중복체크</button></td>
							</tr>
							
							<tr>
								<th>비밀번호</th>
								<td colspan="3"><input class="form-control" type="password" placeholder="비밀번호"></td>
							</tr>
						
							<tr>
								<th>비밀번호 확인</th>
								<td colspan="3"><input class="form-control" type="password" placeholder="비밀번호 확인"></td>
							</tr>
							
							<tr>
								<th>이름</th>
								<td colspan="3"><input class="form-control" type="text" placeholder="이름"></td>
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
								<th>회원구분</th>
								<td>
									<label class="radio-inline">
									  <input type="radio" name="inlineRadioOptions" value="option1"> 개인
									</label>
								</td>
								<td>
									<label class="radio-inline">
									  <input type="radio" name="inlineRadioOptions" value="option2"> 사업자
									</label>
								</td>
								<td>
							</tr>
							<tr>
								<th>사업자등록번호</th>
								<td colspan="3"><input class="form-control" type="text" placeholder="사업자등록번호"></td>
							</tr>
							<tr>
								<td colspan="4">
									<label class="checkbox-inline">
									  <input type="checkbox" value="option1"> 약관 동의
									</label>
								</td>
							</tr>
							<tr>
								<td colspan="4"><button id="joinBtn" class="form-control btn-primary">회원가입</button></td>
							</tr>
						</table>
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
