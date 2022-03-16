<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>

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
				
			</div>

			<h2>안내 사항</h2>
			<div id="guide">
				예매자는 본 안내페이지의 모든 내용을 숙지 및 동의한 것으로 간주합니다. <br>
				〈관람 안내〉<br>
				*서울 공연은 현 정부의 방역지침에 따라, 공연 중 배우들의 객석 동선은 진행되지 않으니 예매에 참고 하시기 바랍니다. <br>
				* 본 상품은 사전배송불가 상품 입니다. <br>
				* 관람 연령 / 티켓 수령 / 공연 관람 안내 미숙지로 인한 책임은 관람자 본인에게 있으며,
				예매 티켓의 취소/변경/환불은 불가하오니 각별히 유의하시기 바랍니다. <br>
				* 8세 이상 관람가 (2015년 12월 31일 이전 출생자 관람 가능)
				8세 미만(2016월 1월 1일 이후 출생자) 아동의 경우 티켓 유무, 보호자 동반 유무와 관계없이 입장 불가합니다.
				초등학생의 경우 생년월일이 확인 가능한 증빙자료로 나이 확인 후 입장이 가능하며,
				육안으로 나이 확인은 불가하오니 티켓 수령 시 미리 준비해 주시기 바랍니다.
				이와 관련 공연 당일 현장 취소/변경/환불은 불가 하오니 예매 시 유의 바랍니다. <br>
				* 본 공연의 객석운영은 정부정책에 따라 추후 변경 될 수 있습니다.<br>
				* 가변석(단계 격상에 따라 취소되는 좌석)을 포함하여 좌석 운영됩니다. 예매 전 '좌석 운영 안내'를 숙지하여 주시기 바랍니다.<br>
				* 티켓은 공연시작 1시간 30분전부터 수령 가능하며, 공연 시작 후 입장이 제한됩니다.
				관람당일 전관람객 대상, 마스크 착용/체온측정 및 전자출입명부(QR) 작성을 의무화하고 있어<br>
				* 현장에서 확인이 필요한 할인을 받으신 경우,
				할인증빙자료 미지참시 차액지불 하셔야 하오니 꼭 지참 부탁 드립니다.<br>
				* 공연장 주변 교통이 매우 혼잡하며 주차장이 협소하므로 가급적 대중교통 이용 바랍니다.<br>
			</div>

		</div>
			
		<div id="side">
			<div id="price">
				<h2>예매정보</h2>
				<div id="prodInfo">
					<table>
						<col style="width:18%">
						<col style="">
						<tr> 
							<td id="poster"><img src="${pageContext.request.contextPath}/assets/image/seatType/${rezProdInfo.posterPath}"></td>
							<td id="prodName"> ${rezProdInfo.prodName} </td>
						</tr>
					</table>
				</div>
				<div id="choiceTable">
					<table>
						<colgroup>
							<col style="width:28%">
							<col style="">
						</colgroup>
						<c:forEach items="${map.selList}" var="vo">
							<tr>
								<td>${fn:toUpperCase(vo.grade)}석</td>
								<td class="right">${vo.section}구역 ${vo.col}열 ${vo.num}번</td>
							</tr>
						</c:forEach>
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
							<td class="right">${map.rezVo.viewDate} ${rezProdInfo.showTime}</td>
						</tr>
						<tr>
							<td>티켓금액</td>
							<td class="right" id="ticketPrice"></td>
						</tr>
						<tr>
							<td>수수료</td>
							<td class="right" id="commission">2000</td>
						</tr>
						<tr id="payTr">
							<td>총결제</td>
							<td class="right" id="payment"></td>
						</tr>
					</table>
				</div>
				
			</div>
			<div id="button">
				<div class="clearfix" id="prevNext">
					<form id="dcForm" action="${pageContext.request.contextPath}/reservation/confirmReservation" method="post">
						<input type="hidden" name="prodNo" value="${param.prodNo}">
						<input type="hidden" name="viewDate" value="${param.viewDate}">
						<input type="hidden" name="rezNo" value="${param.rezNo}">
						<button class="btn-outline-primary" type="button" id="prevBtn">이전단계 </button>
						<button class="btn-primary" type="button" id="nextBtn">다음단계 </button> 
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	var discountList;
	var totalTicket = 0;
	$(document).ready(function(){
		var gradeCount={
				vip:0,
				r:0,
				s:0,
				a:0,
				b:0
		};
		
		<c:forEach items="${map.selList}" var="vo">
			gradeCount.${vo.grade} = gradeCount.${vo.grade}+1;
		</c:forEach>
		
		var seatpriceList;
		$.ajax({
			url: "${pageContext.request.contextPath}/seatprice/seatpriceList",
			type : "post",
			data : {prodNo: ${param.prodNo}},
			dataType: "json",
			async:false, /* 변수를 꺼내기 위한 설정 */
			success : function(result){
				seatpriceList = result;
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
		$.ajax({
			url: "${pageContext.request.contextPath}/discount/discountList",
			type : "post",
			data : {prodNo:${param.prodNo}},
			dataType: "json",
			async:false,
			success : function(result){
				discountList = result;
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
		var gradeNum=0;
		for(var i in gradeCount) {
			if(gradeCount[i] > 0) {
				renderDisOpt(i, gradeCount[i], seatpriceList[gradeNum].price);
				totalTicket += gradeCount[i];
			}
			gradeNum++;
		}
		
		setDropdown();
		
	});
	
	$('#disOpt').on('change','select',function(){
		
		var thisTable = $(this).closest('#disOpt table');			// 선택한 드롭다운의 테이블에서
		var gradeCount = Number(thisTable.find('.count').text());	// 등급 매수
		var tableSelect =  thisTable.find('select');				// 테이블 안의 모든 드롭다운
		
		var selCount = 0;
		for(var i=0; i<tableSelect.length; i++) {
			selCount += Number(tableSelect.eq(i).val());
		}
		
		if(selCount > gradeCount){
			$(this).val('0');
			alert('매수의 합이 '+gradeCount+'이(가) 되도록 다시 선택해주세요.');
		}
		
		var ticketPrice=0;
		var selectList = $('select');
		for(var i=0;i <selectList.length; i++){
			ticketPrice += Number(selectList.eq(i).val()) * Number( selectList.eq(i).parent().siblings('td.dcPrice').text() );
		}
		$('#ticketPrice').text(ticketPrice);
		
		var commission = Number($('#commission').text());
		var payment = ticketPrice + commission;
		$('#payment').text(payment);
		
	});
	
	$('#nextBtn').on("click", function(){
		
		var allSelect = $('select');
		var ticketCount = 0;  // 선택한 티켓 매수
		for(var i=0; i<allSelect.length; i++){
			ticketCount +=  Number(allSelect.eq(i).val());
		}
		// 총 티켓수만큼 선택했는지 확인
		if(totalTicket != ticketCount){
			alert('매수를 모두 선택해주세요');
			return false;
		}
		
		var selseatList = [];
		var rezNo = <c:out value="${param.rezNo}" />;
		var totalPayment = Number($('#payment').text());
		
		var rezVo = {
				rezNo: rezNo,
				totalPayment: totalPayment
		};
		
		/* 선택 좌석마다 할인옵션 부여 */
		<c:forEach items="${map.selList}" var="vo">
			var grade = '${vo.grade}';
			var disOptSelect = $('#disOpt'+grade+' select');
			
			for(var i=0; i<disOptSelect.length; i++){
				var select = disOptSelect.eq(i);
				var selectVal = Number(select.val());
				if(selectVal > 0){
					
					if( Number(select.attr('data-assignment')) < selectVal) {
						select.attr('data-assignment', (Number(select.attr('data-assignment'))+1) );
						
						var dcNo = select.closest('tr').find('.dcName').attr('data-dcno');
						var payment = select.closest('tr').find('.dcPrice').text();
						var selseat = {
								selseatNo : ${vo.selseatNo},
								dcNo : dcNo,
								payment : payment
						};
						selseatList.push(selseat);
						break;
					}
				}
			}
		</c:forEach>
		
		/* 예매번호로 최종결제금액 저장 */
		$.ajax({
			url: "${pageContext.request.contextPath}/reservation/modifyPayment",
			type : "post",
			data : rezVo,
			dataType: "json",
			success : function(result){
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
		/* 선택 좌석별 할인, 결제금액 저장 */
		$.ajax({
			url: "${pageContext.request.contextPath}/selseat/modifyDcPay",
			type : "post",
			traditional: true,
			contentType : "application/json",
			data: JSON.stringify(selseatList),
			dataType: "json",
			success : function(result){
				$('#dcForm').submit();
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
	});
	
	/* 할인 옵션 테이블 그리기 */
	function renderDisOpt(grade, count, gradeprice){
		var str = '';
		
		str +='<table id="disOpt'+grade+'">'
		str +='	<colgroup>'
		str +='		<col style="width:30%">'
		str +='		<col style="width:40%">'
		str +='		<col style="width:15%">'
		str +='		<col style="">'
		str +='	</colgroup>'
		str +='	<tr>'
		str +='		<th colspan="4">'+grade.toUpperCase()+'석을 <span class="text-primary count">'+count+'</span>매 선택하셨습니다.</th>'
		str +='	</tr>'
		str +='	<tr>'
		str +='		<th>일반(정가)</th>'
		str +='		<td class="dcName" data-dcno="0">일반</td>'
		str +='		<td class="dcPrice">'+gradeprice+'</td>'
		str +='		<td><select class="form-control" data-assignment="0"></select></td>'
		str +='	</tr>'
		
		for(var i=0; i< discountList.length; i++) {
			
			str +='	<tr>'
			if(discountList[i].beginDc == null) {
				str +='		<th class="commonDc'+grade+'">일반할인</th>'
			}else{
				str +='		<th class="eventDc'+grade+'">이벤트할인</th>'
			}
			str +='		<td class="dcName" data-dcno="'+discountList[i].dcNo+'">'+discountList[i].dcName+'</td>'
			if(discountList[i].dcType == "0"){
				str +='		<td class="dcPrice">'+(gradeprice*(100-discountList[i].dcRate)/100)+'</td>'
			}else{
				str +='		<td class="dcPrice">'+(gradeprice-discountList[i].dcRate)+'</td>'
			}
			
			str +='		<td><select class="form-control" data-assignment="0"></select></td>'
			str +='	</tr>'
		}
		str +='</table>';
		$("#disOpt").append(str);
		
		
		/*  rowspan */
		var commonDc='commonDc'+grade;
		rowspanByClass(commonDc);
		
		var eventDc='eventDc'+grade;
		rowspanByClass(eventDc);
		

	};
	
	/* select 최대 수량 */
	function setDropdown() {
		var disOptList = $('#disOpt table');
		
		for(var i=0; i<disOptList.length; i++){
			var count = disOptList.eq(i).find('.count').text();
			
			for(var j=0; j<=count; j++) {
				disOptList.eq(i).find('select').append('<option value="'+j+'">'+j+'</option>');
			}
		}
	};
	
	function rowspanByClass(className) {
		$("." + className).each(function() {
	        var rows = $("." + className + ":contains('" + $(this).text() + "')");
	        if (rows.length > 1) {
	            rows.eq(0).attr("rowspan", rows.length);
	            rows.not(":eq(0)").remove();
	        }
	    });
	}
	
</script>

</html>