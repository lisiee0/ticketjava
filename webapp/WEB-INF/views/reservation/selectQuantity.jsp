<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation4.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>

</head>

<body>

	<div id="containerBody">
		
		<div id="header">
			<h1>티켓자바 예매</h1>
		</div>
	
		<div id="menubar">
			<ul class="clearfix">
				<li>등급/좌석선택</li>
				<li id="curMenu">할인/매수선택</li>
				<li>예매확인</li>
				<li id="lastMenu">결제</li>
			</ul>
		</div>
		
		<div id="main">
			
			<h2>티켓종류, 할인, 매수 선택</h2>
			<div id="disOpt">

				<table id="disTable">
					<colgroup>
						<col style="width:30%">
						<col style="width:40%">
						<col style="width:15%">
						<col style="">
					</colgroup>
					<tr>
						<th colspan="4">VIP석을 <span class="text-primary">1</span>매 선택하셨습니다.</th>
					</tr>
					<tr>
						<th>일반</th>
						<td>일반</td>
						<td>정가</td>
						<td><select class="form-control 0-10"></select></td>
					</tr>
					<tr>
						<th rowspan="2">일반할인</th>
						<td>국가유공자 할인</td>
						<td>30%</td>
						<td><select class="form-control 0-10"></select></td>
					</tr>
					<tr>
						<td>재관람 할인</td>
						<td>40%</td>
						<td><select class="form-control 0-10"></select></td>
					</tr>
					<tr>
						<th rowspan="2">이벤트할인</th>
						<td>타임세일</td>
						<td>50%</td>
						<td><select class="form-control 0-10"></select></td>
					</tr>
					<tr>
						<td>문화의날</td>
						<td>50%</td>
						<td><select class="form-control 0-10"></select></td>
					</tr>

				</table>

				<table id="disTable">
					<colgroup>
						<col style="width:30%">
						<col style="width:40%">
						<col style="width:15%">
						<col style="">
					</colgroup>
					<tr>
						<th colspan="4">S석을 <span class="text-primary">3</span>매 선택하셨습니다.</th>
					</tr>
					<tr>
						<th>일반</th>
						<td>일반</td>
						<td>정가</td>
						<td><select class="form-control 0-10"></select></td>
					</tr>
					<tr>
						<th rowspan="2">일반할인</th>
						<td>국가유공자 할인</td>
						<td>30%</td>
						<td><select class="form-control 0-10"></select></td>
					</tr>
					<tr>
						<td>재관람 할인</td>
						<td>40%</td>
						<td><select class="form-control 0-10"></select></td>
					</tr>
					<tr>
						<th rowspan="2">이벤트할인</th>
						<td>타임세일</td>
						<td>50%</td>
						<td><select class="form-control 0-10"></select></td>
					</tr>
					<tr>
						<td>문화의날</td>
						<td>50%</td>
						<td><select class="form-control 0-10"></select></td>
					</tr>
				</table>
			</div>

			<h2>안내 사항</h2>
			<div id="guide">
				<* 예매자는 본 안내페이지의 모든 내용을 숙지 및 동의한 것으로 간주합니다.

				〈관람 안내〉
				*서울 공연은 현 정부의 방역지침에 따라, 공연 중 배우들의 객석 동선은 진행되지 않으니 예매에 참고 하시기 바랍니다.
				
				* 본 상품은 사전배송불가 상품 입니다.
				* 관람 연령 / 티켓 수령 / 공연 관람 안내 미숙지로 인한 책임은 관람자 본인에게 있으며,
				예매 티켓의 취소/변경/환불은 불가하오니 각별히 유의하시기 바랍니다.
				
				* 8세 이상 관람가 (2015년 12월 31일 이전 출생자 관람 가능)
				8세 미만(2016월 1월 1일 이후 출생자) 아동의 경우 티켓 유무, 보호자 동반 유무와 관계없이 입장 불가합니다.
				초등학생의 경우 생년월일이 확인 가능한 증빙자료로 나이 확인 후 입장이 가능하며,
				육안으로 나이 확인은 불가하오니 티켓 수령 시 미리 준비해 주시기 바랍니다.
				이와 관련 공연 당일 현장 취소/변경/환불은 불가 하오니 예매 시 유의 바랍니다.
				
				* 본 공연의 객석운영은 정부정책에 따라 추후 변경 될 수 있습니다.
				* 가변석(단계 격상에 따라 취소되는 좌석)을 포함하여 좌석 운영됩니다. 예매 전 '좌석 운영 안내'를 숙지하여 주시기 바랍니다.
				
				* 티켓은 공연시작 1시간 30분전부터 수령 가능하며, 공연 시작 후 입장이 제한됩니다.
				관람당일 전관람객 대상, 마스크 착용/체온측정 및 전자출입명부(QR) 작성을 의무화하고 있어
				평소보다 많은 시간이 소요되오니 충분한 시간을 가지고 공연장을 찾아 주시기 바랍니다.
				
				* 현장에서 확인이 필요한 할인을 받으신 경우,
				할인증빙자료 미지참시 차액지불 하셔야 하오니 꼭 지참 부탁 드립니다.
				
				* 공연장 주변 교통이 매우 혼잡하며 주차장이 협소하므로 가급적 대중교통 이용 바랍니다.
			</div>

		</div>
			
		<div id="side">
			<div id="price">
				<h2>예매정보</h2>
				
				<div id="choiceTable">
					<table>
						<colgroup>
							<col style="width:28%">
							<col style="">
						</colgroup>
						<tr>
							<td>VIP석</td>
							<td class="right">A구역 1열 4번</td>
						</tr>
						<tr>
							<td>S석</td>
							<td class="right">B구역 4열 12번</td>
						</tr>
					</table>
				</div>
				
				<div id="reInfo">
					<table>
						<colgroup>
							<col style="width:30%">
							<col style="">
						</colgroup>
						<tr>
							<td>일시</td>
							<td class="right">2022.02.25(금) 19:30</td>
						</tr>
						<tr>
							<td>티켓금액</td>
							<td class="right">150,000</td>
						</tr>
						<tr>
							<td>할인</td>
							<td class="right">60,000</td>
						</tr>
						<tr id="payTr">
							<td>총결제</td>
							<td class="right" id="payment">120,000</td>
						</tr>
					</table>
				</div>
				
			</div>
			<div id="button">
				<div class="clearfix" id="prevNext">
					<button class="btn-outline-primary" type="button" id="prevBtn">이전단계 </button>
					<button class="btn-primary" type="button" id="nextBtn">다음단계 </button> 
				</div>
			</div>
		</div>
	</div>
</body>

</html>