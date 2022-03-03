<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava Standard layout include</title>

<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>

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
								<td><input class="form-control" type="text" id="sample6_postcode" placeholder="우편번호" readonly></td>
								<td colspan="2" class="outlineBtn">
									<button class="form-control btn-outline-primary" type="button" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
								</td>
							</tr>
						
							<tr>
								<td></td>
								<td colspan="3"><input id="sample6_address" class="form-control" type="text" placeholder="주소" readonly></td>
							</tr>
							
							<tr>
								<td></td>
								<td colspan="3"><input id="sample6_detailAddress" class="form-control" type="text" placeholder="상세주소"></td>
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
							
							<tr id="usertype">
								<th>회원구분</th>
								<td>
									<label class="radio-inline">
									  <input type="radio" id="personal" name="inlineRadioOptions" value="1" checked> 개인
									</label>
								</td>
								<td>
									<label class="radio-inline">
									  <input type="radio" id="bizman" name="inlineRadioOptions" value="2"> 사업자
									</label>
								</td>
								<td>
							</tr>
							<!-- <tr>
								<th>사업자등록번호</th>
								<td colspan="3"><input class="form-control" type="text" placeholder="사업자등록번호"></td>
							</tr> -->
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

<script type="text/javascript">
	$("#bizman").change(function(){
		if(this.checked){
			$("#usertype").after('<tr id="bizno">'+
										 	 '<th>사업자등록번호</th>'+
										 	 '<td colspan="3"><input class="form-control" type="text" placeholder="사업자등록번호"></td>'+
										 '</tr>');
		}
	});
	
	$("#personal").change(function(){
		if(this.checked){
			$("#bizno").remove();
		}
	});
	
	
	
	
</script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>


</html>
