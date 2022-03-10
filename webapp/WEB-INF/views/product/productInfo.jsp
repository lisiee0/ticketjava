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
<link href="${pageContext.request.contextPath}/assets/css/product/productInfo.css" rel="stylesheet">

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
					<h2 class="pageMenu section">뮤지컬 <아이다> 인터네셔널 투어 </h2>
				
					<div class="container bgc">
						<div class="row">
							<!-- 포스터 위치 -->
							<div class="col-xs-3 np">
								<img id="mainPoster" src="${pageContext.request.contextPath}/assets/image/test/aida.jpg">
							</div>
							
							<div class="col-xs-6 np" id="mainInfo">
								<table id="infoTable">
									<tr>
										<th>장소</th>
										<td>블루스퀘어 신한카드홀</td>
									</tr>
									<tr>
										<th>공연기간</th>
										<td>2022.05.10 ~ 2022.08.07</td>
									</tr>
									<tr>
										<th>관람시간</th>
										<td>160분</td>
									</tr>
									<tr>
										<th>관람연령</th>
										<td>8세이상 관람가능</td>
									</tr>
									<tr>
										<th>가격</th>
										<td>
											<table id="priceTable">
												<tr>
													<td>VIP석</td>
													<td>150,000원</td>
												</tr>
												<tr>
													<td>R석</td>
													<td>130,000원</td>
												</tr>
												<tr>
													<td>S석</td>
													<td>100,000원</td>
												</tr>
												<tr>
													<td>A석</td>
													<td>70,000원</td>
												</tr>	
											</table>
										</td>
									</tr>
								</table>
							</div>
						
						
							<div class="col-xs-3 np" id="calArea">
								<!-- 캘린더 api 구현 위치 -->
								<form id="rezArea" method="post" action="">
									<c:import url="/WEB-INF/views/include/calendar.jsp"></c:import>
									<input id="prodNo" type="hidden" name="prodNo" value="1">
									<button type="button" id="rezBtn" class="btn btn-primary btn-block">예매하기</button>
								</form>
							
							</div>		
						</div>
					</div>
					
					<!-- 공연상세 페이지 네비 -->
					<div class="container section">
						<div class="row">

						<ul class="nav navbar-nav">
							<li class="scroll"><a href="">공연정보</a></li>
							<li class="scroll"><a href="">캐스팅정보</a></li>
							<li class="scroll"><a href="">부가정보</a></li>
							<li class="scroll"><a href="">관람후기</a></li>
							<li class="scroll"><a href="">Q&A</a></li>
							<li class="scroll"><a href="">공연장정보</a></li>
							<li class="scroll"><a href="">예매/취소안내</a></li>
						</ul>
	
						</div>
					</div>
					
					
					<!-- 공연상세 -->
					<div class="container section">
						<div class="row">
							<div class="col-xs-9 np" id="infoDetail">
								<p>공연정보</p>
								<img src="${pageContext.request.contextPath}/assets/image/test/info1.png">
								
								<p>캐스팅정보</p>
								<img src="${pageContext.request.contextPath}/assets/image/test/info2.png">
								
								<p>부가정보</p>
								<img src="${pageContext.request.contextPath}/assets/image/test/info3.png">
							</div>
						</div>
					</div>
					
					
					<!-- 관람후기 -->
					<div class="container">
						<div class="row">
							<h4 class="cateMenu">관람후기</h4>
							<table class="table review-qna">
								<colgroup>
									<col width="55%">
									<col width="15%">
									<col width="15%">
									<col width="15%">
								</colgroup>
								<tr class="info">
									<th>내용</th>
									<th>작성자</th>
									<th>작성일</th>
									<th>평점</th>
								</tr>
								<tr>
									<td>중학생 때 A석 먼 발치에서 보고 감동받아 지금 뮤지컬배우의 꿈을 꾸게 되었네요.<br>
										그 이후로 아이다를 보지 못했는데, 19년도에 그랜드파이널을 놓치고 너무 아쉬운 마음이 가득이었습니다.</td>
									<td>abcdefg</td>
									<td>22-02-22</td>
									<td>
										<span class="star">★★★★★
									  	<span>★★★★★</span>
									  	<input type="range" value="7" step="1" min="0" max="10">
										</span>
									</td>
								</tr>
								<tr>
									<td>다시보고싶습니다</td>
									<td>dasdasd</td>
									<td>22-02-24</td>
									<td>
										<span class="star">★★★★★
									  	<span>★★★★★</span>
									  	<input type="range" value="10" step="1" min="0" max="10">
										</span>
									</td>
								</tr>
							</table>
							<button type="button" class="btn btn-primary position">후기작성</button>

						</div>
					</div>
					
					<!-- 후기작성 -->
					<div class="container bgc">
						<div class="row">
							<textarea class="form-control" id="review" placeholder="후기를 남겨주세요"></textarea><br>
							<span class="star">
							  ★★★★★
							  <span>★★★★★</span>
							  <input id="" type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10">
							</span>
							<button type="button" class="btn btn-primary position">등록</button>
						</div>
					</div>
					
					
					<!-- 공연장 정보 -->
					<div class="container section">
						<div class="row">
							<h4 class="cateMenu">공연장 정보</h4>
							<div id="mapArea" class="col-xs-4">
								<img id="map" src="${pageContext.request.contextPath}/assets/image/test/map.png">
							</div>
							<div class="col-xs-8">
								<p><strong>[공연장 정보]</strong></p><br>
								<p>장소: 홍익대 대학로 아트센터 대극장</p>
								<p>주소: 서울특별시 종로구 연건동 128-8 홍익대 대학로 아트센터</p>
								<p>대표번호: 02-1234-1234</p>
							</div>
						</div>
					</div>
					
					
					<!-- 예매/취소 안내 -->
					<div class="container section">
						<div class="row">
							<h4 class="cateMenu">예매/취소 안내</h4>
							<p>예매 취소 시 주의사항<p>
							<p>티켓 예매 후 7일 이내에 취소 시, 취소수수료가 없습니다.</p>
							<p>단, 예매 후 7일 이내라도 취소 시점이 공연일로부터 10일 이내라면 그에 해당하는 취소수수료가 부과됩니다.</p>
							<p>예매 당일 자정(12:00) 전에 취소할 경우 예매 수수료가 환불되며, 그 이후에는 환불되지 않습니다.</p>
							<p>예매티켓 취소는 아래 안내된 취소가능일 이내에만 할 수 있습니다.</p>
						</div>
					</div>
					
					
					<!-- QnA -->
					<div class="container section">
						<div class="row">
							<h4 class="cateMenu">Q&A</h4>
							<table class="table review-qna">
								<colgroup>
									<col width="60%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<tr class="info">
									<th>내용</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
								<tr>
									<td>예매 후 7일 이내, 취소 시점이 공연일로부터 10일 이내라면 그에 해당하는 취소수수료 관련 문의<br>
										<span class="glyphicon glyphicon-send">[답변]</span>
									</td>
									<td>abcdefg</td>
									<td>22-02-22</td>
								</tr>
								<tr>
									<td>공연장 주차시설에 관해 궁금한점<br>
										<span class="glyphicon glyphicon-send">[답변]</span>
									</td>
									<td>werwer</td>
									<td>22-02-22</td>
								</tr>
							</table>
							<button type="button" class="btn btn-primary position">문의하기</button>
						</div>
					</div>
					
									
					<!-- 문의작성 -->
					<div class="container bgc">
						<div class="row">
							<textarea class="form-control" id="qna" placeholder="문의를 남겨주세요"></textarea><br>
							<button type="button" class="btn btn-primary position">등록</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 컨텐츠 구역 종료 -->
		
		
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		
	</div> <!-- wrap 종료 -->
	
</body>


<script>

	$("#rezBtn").on("click", function() {
		
		var year= $('.-selected-').data('year');
		var month= $('.-selected-').data('month');
		month = month + 1;
		var date= $('.-selected-').data('date');
		
		if(month<10) {
			month= "0"+month;
		}
		if(date<10) {
			date= "0"+date;
		}
		
		/* $("#rezArea").append('<input type="hidden" name="viewDate" value="'+year+'-'+month+'-'+date+'">'); */
	
		var viewDate = year+'-'+month+'-'+date;
		var prodNo = $('#prodNo').val();

		console.log(viewDate+' '+prodNo);
		
		window.open('${pageContext.request.contextPath}/reservation/selectSeat?prodNo='+prodNo+'&viewDate='+viewDate, 'reserve', 'width=1100, height=800, left=300, top=100');
	});
	
	
	 const drawStar = (target) => {
		    document.querySelector('.star span').style.width = '${value * 10}%'; /*value 수정*/
	  }
	
</script>
</html>
