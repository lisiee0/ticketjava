<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			alert('좌석 매수를 초과하여 권종을 선택할 수 없습니다.');
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
	
	$('#prevBtn').on('click', function(){
		
		var rezNo = ${param.rezNo};
		$.ajax({
			url: "${pageContext.request.contextPath}/reservation/preDelNow",
			type : "post",
			data: {rezNo:rezNo},
			success : function(){
				$('#rezNo').remove();
				$('#dcForm').attr('action', '${pageContext.request.contextPath}/reservation/selectSeat');
				$('#dcForm').submit();
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
	});
	
	$('#nextBtn').on("click", function(){
		
		var allSelect = $('select');
		var ticketCount = 0;  // 선택한 티켓 매수
		for(var i=0; i<allSelect.length; i++){
			ticketCount +=  Number(allSelect.eq(i).val());
		}
		// 총 티켓수만큼 선택했는지 확인
		if(totalTicket != ticketCount){
			alert('선택하신 좌석수와 예매하실 티켓매수가 일치하지 않습니다.');
			return false;
		}
		
		var selseatList = [];
		var rezNo = ${param.rezNo};
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
				console.log(result);
				if(result == 'fail'){
					alert('선점이 만료됐습니다. 처음부터 진행해주세요');
					$('#rezNo').remove();
					$('#dcForm').attr('action', '${pageContext.request.contextPath}/reservation/selectSeat');
					$('#dcForm').submit();
				}
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
			var today = new Date();
			var beginDc = new Date( new Date(discountList[i].beginDc).getTime() - 540*60*1000 );
			var endDc = new Date( new Date(discountList[i].endDc).getTime() - 540*60*1000);
			
			/* console.log('-------------------');
			console.log(discountList[i].dcName)
			console.log('today: '+ today);
			console.log('begin: '+beginDc);
			console.log('end: ' +endDc);
			console.log('-------------------'); */
			
			if(discountList[i].beginDc != null && ( today < beginDc || today > endDc )) 
				continue;
			
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