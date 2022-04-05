<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 티켓자바 - 공연장 추가하기</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">



<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">

<!-- 개인 css -->
<link href="${pageContext.request.contextPath}/assets/css/indcom.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/admin/admin.css" rel="stylesheet">

<script src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
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
								<h3 class="pageMenu adminsection">공연장 등록</h3>
							</div>
							<!-- //content-head -->
						</div>

						<div class="col-xs-12 np">
							<div id="board">

								<form action="${pageContext.request.contextPath}/admin/theaterAdd" method="post" enctype="multipart/form-data" class="form-horizontal">

									<!-- 공연장명 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
										<label class="form-text col-xs-2" for="">공연장명</label>
										<div class="col-xs-6">
											<input type="text" class="form-control" name="theaterName" placeholder="공연장명을 입력하세요">
										</div>
										<div class="col-xs-2"></div>
									</div>

									<!-- 시설명 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
										<label class="form-text col-xs-2" for="">시설명</label>
										<div class="col-xs-6">

											<input type="text" class="form-control formZipcode" name="hallName" placeholder="시설명">
											&nbsp; 
											<span id="add-hallName" class="glyphicon glyphicon-plus"></span><br>
											<!-- + 누르면 반복 -->
											<div id="hallNameArea"></div>

										</div>
										<div class="col-xs-2"></div>
									</div>


									<!-- 공연장 주소 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
										<label class="form-text col-xs-2">공연장주소</label>
										<div class="col-xs-6">
											<input id="sample6_postcode" type="text" class="form-control col-xs-4 formZipcode" name="postCode" placeholder="" readonly>
											<div class="col-xs-4"></div>
											<button type="button" class="btn btn-primary col-xs-4 formZipcode" onclick="sample6_execDaumPostcode()">우편번호찾기</button>

											<input id="sample6_address" type="text" class="form-control formMargin" name="address" placeholder="주소" readonly> <input id="sample6_detailAddress" type="text" class="form-control formMargin" name="address2" placeholder="상세주소">
										</div>
										<div class="col-xs-2"></div>
									</div>


									<!-- 대표번호 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
										<label class="form-text col-xs-2" for="phone">대표번호</label>
										<div class="col-xs-6">
											<input type="text" class="form-control" name="phone" placeholder="대표번호를 입력하세요">
										</div>
										<div class="col-xs-2"></div>
									</div>

									<!-- 홈페이지 -->
									<div class="form-group">
										<div class="col-xs-2"></div>
										<label class="form-text col-xs-2" for="homePage">홈페이지</label>
										<div class="col-xs-6">
											<input type="text" class="form-control" name="homePage" placeholder="홈페이지를 입력하세요">
										</div>
										<div class="col-xs-2"></div>
									</div>


									<div class="form-group">
										<div class="col-xs-2"></div>
									    <label class="form-text col-xs-2" for="">공연장로고</label>
									    <div class="col-xs-6">
									    	<input id="file" type="file" name="file">
									    </div>
									    <div class="col-xs-2"></div>
									</div>
									<br>
									<br>
									<div id="btnLocation">
										<button type="submit" class="btn btn-primary" id="addbtn">공연장 등록</button>
									</div>
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

	// 시설명+ 버튼 클릭할때
	$("#add-hallName").on("click", function() {
		console.log("click");
		$("#hallNameArea").append('<input type="text" class="form-control formZipcode" name="hallName" placeholder="시설명"><br>');
	});

	
	// 우편번호찾기
	function sample6_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	        	
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수
	
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }

	            if(data.userSelectedType === 'R'){
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }

	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	            } else {
	                document.getElementById("sample6_extraAddress").value = '';
	            }
	            document.getElementById('sample6_postcode').value = data.zonecode;
	            document.getElementById("sample6_address").value = addr;	           
	            document.getElementById("sample6_detailAddress").focus();
	        }
	    }).open();
	}

</script>




</html>