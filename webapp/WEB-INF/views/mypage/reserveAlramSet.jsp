<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 마이페이지 취소알림</title>

<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>

<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonAside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">

<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="${pageContext.request.contextPath}/assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">

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
					<!-- 어사이드 종료 -->

					<!-- .col-xs-10컨텐츠 출력 자리 시작 -->
					<div class="col-xs-10">



						<!-- content -->
						<div id="content">

							<!-- content-head -->
							<div id="content-head">
								<h3>취소알림 설정</h3>
								<div id="location">
									<ul>
										<li>홈</li>
										<li>마이페이지</li>
										<li class="last">취소알림 설정</li>
									</ul>
								</div>
								<div class="clear"></div>
							</div>
							<!-- //content-head -->


							<div id="board">
								<div id="list">
									<table>
										<thead>
											<tr>
												<th>번호</th>
												<!-- 취소알림 신청번호 -->
												<th>알림신청일</th>
												<th>상품명</th>
												<th>구역</th>
												<th>간격/횟수</th>
												<th>알림수정</th>
												<th>알림상태</th>
											</tr>
										</thead>
										<tbody>
												
											<c:forEach items="${reqList}" var="vo"> 
												<tr>
													<td class="reqNo">${vo.reqNo}</td>
													<td>${vo.reqDate}</td>
													<td><a href="#">${vo.prodName}</a></td>
													<td>${vo.selSection}</td>
													<td>
														<c:choose>
															<c:when test="${vo.interval == 0}">
																간격 없음
															</c:when>
															<c:otherwise> 
																${vo.interval}초
															</c:otherwise>
														</c:choose>
														/
														<c:choose>
															<c:when test="${vo.notiTimes == 1000000}">
																계속
															</c:when>
															<c:otherwise> 
																${vo.notiTimes}회
															</c:otherwise>
														</c:choose>
													</td>
													<td>
														<button type="button" id="chgSetBtn" class="btn btn-primary" data-prodno="${vo.prodNo}" data-viewdate="${vo.viewDate}">설정 변경</button>
													</td>
													<td>
														<c:choose>
															<c:when test="${vo.status == 1}">
																<img id="activeBtn" src="${pageContext.request.contextPath}/assets/image/index/bell-normal.png" data-status="${vo.status}">
															</c:when>
															<c:otherwise> <!-- status == 0  -->
																<img id="activeBtn" src="${pageContext.request.contextPath}/assets/image/index/bell-off.png" data-status="${vo.status}">
															</c:otherwise>
														</c:choose>
													</td>
												</tr>
											</c:forEach>
												
											
										</tbody>
									</table>
								</div>
							</div>
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

<script>
	$('#chgSetBtn').on('click',function(){
		var viewDate = $(this).data('viewdate');
		var prodNo= $(this).data('prodno');
		window.open('${pageContext.request.contextPath}/notification/notireqForm?prodNo='+prodNo+'&viewDate='+viewDate,'notireqForm', 'width=970, height=800, left=300, top=100');
	});
	
 	$('#activeBtn').on('click',function(){
		var status = $(this).attr('data-status');
		var reqNo = $(this).closest('tr').find('.reqNo').text();
		console.log(status);
		
		var notireqVo = {
			reqNo : reqNo,
			status : status
		};
		
		$.ajax({
			url: "${pageContext.request.contextPath}/notification/notiToggle",
			type : "post",
			data : notireqVo,
			async : false,
			dataType: "json",
			success : function(result){
				if(result == 'success'){
					if(status == 1) {
						alert('알림 off');
						$('#activeBtn').attr('src', "${pageContext.request.contextPath}/assets/image/index/bell-off.png");
						$('#activeBtn').attr('data-status','0');
					}
					else{
						alert('알림 on');
						$('#activeBtn').attr('src', "${pageContext.request.contextPath}/assets/image/index/bell-normal.png");
						$('#activeBtn').attr('data-status','1');
					}
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
	})
	
</script>

</html>
