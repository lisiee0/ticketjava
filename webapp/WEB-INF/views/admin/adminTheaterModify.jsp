<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava include</title>


<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">

<!-- 개인 css -->
<link href="${pageContext.request.contextPath}/assets/css/indcom.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/admin/admin.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>

</head>

<body>
	<div id="wrap">
		<!-- header & nav -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 종료 -->
		
		
		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">
			<div class="container"> 
				<div class="row">
				
					<!-- .col-xs-2 어사이드 자리 시작 -->
					<div class="col-xs-2 np">
						<div id="admin-aside">
							<h2 class="admin-pageMenu">관리페이지</h2>
							<ul class="clearfix">
								<li class="currentPage menubar-line"><a href="${pageContext.request.contextPath}/admin/">공연장 목록</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/noticeList">공연장 공지사항</a></li>
							</ul>
						</div>
					</div>
					<!-- 어사이드 종료 -->
		
					<!-- .col-xs-10컨텐츠 출력 자리 시작 -->
					<div class="col-xs-10 admin-content">
						<div class="col-xs-12">
							<!-- content-head -->
							<div class="row">
								<h3 class="pageMenu adminsection">공연장 수정</h3>
							</div>
							<!-- //content-head -->
						</div>
						
						<div class="col-xs-12 np">
							<div id="board">
							
								<form action="${pageContext.request.contextPath}/admin/theaterModify" method="post" enctype="multipart/form-data" class="form-horizontal">
	
	   								<!-- 공연장명 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
									    <label class="form-text col-xs-2" for="">공연장명</label>
									    <div class="col-xs-6">
									    	<input type="text" class="form-control" name="theaterName" value="${hallVo.theaterName}" placeholder="${hallVo.theaterName}">
									    </div>
									    <div class="col-xs-2"></div>
									</div>
	
	   								<!-- 시설명 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
									    <label class="form-text col-xs-2" for="">시설명</label>
									    <div class="col-xs-6">
									    	<input type="text" class="form-control formZipcode" name="hallName" placeholder="${hallVo.hallName}" value="${hallVo.hallName}">
									    </div>
									    <div class="col-xs-2"></div>
									</div>

								
									<!-- 공연장 주소 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
										<label class="form-text col-xs-2">공연장주소</label>
										<div class="col-xs-6">
											<input id="sample6_postcode" type="text" class="form-control col-xs-4 formZipcode" name="postCode" value="${hallVo.postCode}" placeholder="${hallVo.postCode}" readonly>
											<div class="col-xs-4"></div>
											<button type="button" class="btn btn-primary col-xs-4 formZipcode" onclick="sample6_execDaumPostcode()">우편번호찾기</button>

											<input id="sample6_address" type="text" class="form-control formMargin" name="address" value="${hallVo.address}" placeholder="${hallVo.address}" readonly>
											<input id="sample6_detailAddress" type="text" class="form-control formMargin" name="address2" value="${hallVo.address2}" placeholder="${hallVo.address2}">
										</div>
										<div class="col-xs-2"></div>
									</div>
									
									
									<!-- 대표번호 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
									    <label class="form-text col-xs-2" for="">대표번호</label>
									    <div class="col-xs-6">
									    	<input type="text" class="form-control" name="phone" value="${hallVo.phone}" placeholder="${hallVo.phone}">
									    </div>
									    <div class="col-xs-2"></div>
									</div>
									
									<!-- 홈페이지 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
									    <label class="form-text col-xs-2" for="">홈페이지</label>
									    <div class="col-xs-6">
									    	<input type="text" class="form-control" name="homePage" value="${hallVo.homePage}" placeholder="${hallVo.homePage}">
									    </div>
									    <div class="col-xs-2"></div>
									</div>
									
									<div class="form-group">
										<div class="col-xs-2"></div>
									    <label class="form-text col-xs-2" for="">공연장로고</label>
									    <div class="col-xs-6">
									    	<input id="file" type="file" name="file">
									    	<input type="hidden" name="logoPath" value="${hallVo.logoPath}">
									    </div>
									    <div class="col-xs-2"></div>
									</div>
									<br>
									<br>
									<div id="btnLocation">
	                          			<button type="submit" class="btn btn-primary" id="modbtn">공연장 수정</button>
	                          		</div>
	                          		<input type="hidden" name="hallNo" value="${hallVo.hallNo}">
	                          		<input type="hidden" name="theaterNo" value="${hallVo.theaterNo}">
		                      </form>
								
							</div>
							<!-- content body -->
						</div>
						<!-- // content body -->
					</div>
					<!-- 컨텐츠 종료 -->
				</div>		
			</div> 
		</div>
		<!-- 컨텐츠 구역 종료 -->

		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

	</div>
	<!-- //wrap -->

</body>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>

// 우편번호찾기
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