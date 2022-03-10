<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 마이페이지 예매 상세페이지</title>
<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonAside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">
<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="${pageContext.request.contextPath}/assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/mypage/mypageTicketingDetail.css" rel="stylesheet" type="text/css">

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
								<h3>예매정보 상세</h3>
								<div id="location">
									<ul>
										<li>홈</li>
										<li>마이페이지</li>
										<li class="last">예매내역/취소</li>
									</ul>
								</div>
								<div class="clear"></div>
							</div>
							<!-- //content-head -->
								
								<!-- content body -->
								<div class="ticketingDetail">
									<h4>예매정보 상세</h4>
									<h5>티켓명 : 뮤지컬 라이온 킹 인터내셔널 투어 － 서울（Musical The Lion King）</h5>
									<h6>예매번호 : t20220310</h6>
									<table>
										<tbody>
											<tr>
												<th>관람일시</th>
												<td>2022.03.17(목) 13:30</td>
												<th>장소</th>
												<td>예술의전당 오페라극장(theatername hallname)</td>
											</tr>
											<tr>
												<th>좌석</th>
												<td>객석 1층 5열 17 <br>객석 1층 5열 17
												</td>
												<th>예매일</th>
												<td>2022.03.02</td>
											</tr>
											<tr>
												<th>예매상태</th>
												<td>예매완료</td>
												<th>예매자</th>
												<td>홍길동</td>
											</tr>
										</tbody>
									</table>
									<h4>예매내역 및 취소</h4>
									<form action="requestCancelTicket" name="cancelticket" method="get">
										<table>
											<tbody>
												<tr>
													<th scope="col"><input type="checkbox" disabled></th>
													<th scope="col">좌석등급</th>
													<th scope="col">권종</th>
													<th scope="col">좌석번호(col/no)</th>
													<th scope="col">가격</th>
													<th scope="col">예매상태</th>
												</tr>
												<tr>
													<td><input type="checkbox" />
													<td class="nav-item">S석</td>
													<td class="nav-item">재관람할인</td>
													<td class="nav-item">1층A블럭 12열5번</td>
													<td class="nav-item">175,000원</td>
													<td class="nav-item">취소됨</td>
												</tr>
												<tr>
													<td><input type="checkbox" />
													<td>R석</td>
													<td>vip할인</td>
													<td>1층A블럭 12열5번</td>
													<td>175,000원</td>
													<td class="nav-item">예매중</td>
												</tr>
												
												<c:forEach items="${requestScope.reserveDetail}" var="reserveDetail">
												<tr>
													<td><input type="checkbox" />
													<td class="nav-item">${reserveDetail.grade}석</td>
													<td class="nav-item">재관람할인</td>
													<td class="nav-item">1층A블럭 12열5번</td>
													<td class="nav-item">175,000원</td>
													<td class="nav-item">취소됨</td>
												</tr>
												</c:forEach>
												
											</tbody>
										</table>
										<div class="btncancel">


											<button class="btn btn-primary" type="submit" value="" onclick="cancelCheck()">취소하기</button>
										</div>
									</form>

									<h4>취소 유의사항</h4>


									<table>
										<tbody>
											<tr>
												<th></th>
												<td>
													<div class="noticeCancelRegulations">
														<ul>
															<li>취소마감시간이 공연전시 상품 및 스포츠 구단마다 상이하며, 마감시간이 지난 이후에는 취소가 불가능합니다.</li>
															<li>취소 진행 시 취소 마감시간 확인 후 취소해주시기 바랍니다.</li>
															<li>예매수수료는 예매일 당일 취소하실 경우만 환불되며, 그 이후 취소 시에는 환불되지 않습니다.</li>
															<li>행사상의 문제로 인해 환불을 받으실 경우 별도의 수수료를 제공하지 않으며, 환불 주체가 티켓자바(TicketJava)가 아닌 행사 주최사가 될 수 있습니다.</li>
															<li>신용카드로 결제한 건에 대해 취소하실 경우, 최초 결제와 동일한 카드로 예매시점에 따라 취소 수수료와 배송비 등을 재승인합니다. 따라서 무이자할부 혜택 등 기간 별 프로모션 혜택이 적용되지 않을 수 있습니다.</li>
															<li>배송준비중 혹은 배송이후 상태에서는 배송지 변경이 불가합니다.</li>
															<li>발송 받으신 티켓을 분실하셨거나 티켓이 훼손되었을 경우 취소 및 변경이 절대 불가하오니 이 점 유의하시기 바랍니다.</li>
															<li>이미 배송이 시작된 티켓의 경우는 온라인 및 콜센터에서 취소가 불가합니다. 반드시 취소마감 시간 이전에 티켓이 아래 주소로 반송되어야 합니다. 취소수수료는 도착일자 기준으로 부과됩니다.</li>
															<li>티켓 반송시, 고객님의 예매번호와 연락처, 반송사유를 함께 보내주시면 빠른 처리에 도움이 됩니다. 또한 무통장 입금이나 계좌이체를 이용하셨을 경우 환불 받으실 계좌와 예금주를 적으셔서 티켓과 함께 등기우편으로 보내주시길 부탁 드립니다.</li>
															<li class="last">위 조건은 2022년 01월 01일 부터 유효합니다</li>
														</ul>
													</div>
												</td>
											</tr>
										</tbody>
									</table>

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
</html>
