$(function(){
	
	// capcha
	$('#myModal').modal({
	    backdrop: 'static',
	    keyboard: false
	})
	$("#myModal").modal("show");
	
	
	var pageContext = $('#pageContext').val();
	var viewDate = $('[name=viewDate]').val();
	var prodNo = $('[name=prodNo]').val();
	
	var rezVo = {
			viewDate: viewDate ,
			prodNo: prodNo
	};
	
	fetchOccupy(rezVo); // 예매된 좌석 가져오기
	
	
	/* 잔여석 계산 */
	var gradeList = $('#priceTable tr');
	for(var i=0; i<gradeList.length; i++){
		var gradetr = gradeList.eq(i);
		var grade = gradetr.data('grade');
		if(grade=='vip'){
			grade = 'v';
		}
		
		var remaining = $('#seatPlanDiv input[type=checkbox].'+grade+':not(:disabled)').length;
		gradetr.find('.remaining').text(remaining+'석');
	}
	
	/* 좌석 선택 시 선택 좌석 출력 */
	$('#seatPlanDiv').on('change','table td input[type=checkbox]' ,function(){
		if(this.checked){
			var grade= $(this).attr("class");
			if(grade == 'v')
				grade = "vip";
			var section = $(this).attr('data-section');
			var col =  $(this).attr('data-col');
			var num = $(this).attr('data-num');
			
			$('#choiceTable table').append(
					'<tr id="tr'+$(this).attr('id')+'"><td>'+grade.toUpperCase()+
					'석</td><td class="right">'+section+'구역 '+col+'열 '+num+'번</td></tr>'
			);
		}
	});
	
	/* 선택 취소 시 선택 좌석에서 삭제 */
	$('#seatPlanDiv').on('change','table td input[type=checkbox]' ,function(){
		if(! this.checked){
			$('#tr'+$(this).attr('id')).remove();
		}
	});
	
	
	/* 다음 단계 버튼 클릭 시 */
	$('#nextBtn').on('click', function(){
		
		var chkbox = $('[type=checkbox]:checked').get();
		
		if(chkbox.length <= 0){
			alert('좌석을 선택해주세요');
			return false;
		}
		
		/* 선택 좌석 리스트 */
		var selseatList = [];
		for(var i=0; i< chkbox.length; i++) {
			var e = $('[type=checkbox]:checked').eq(i);
			
			var grade= e.attr("class");
			if(grade == 'v')
				grade = "vip";
			var section = e.attr('data-section');
			var col = e.attr('data-col');
			var num = e.attr('data-num');
			
			var preoccupyVo = {
				grade:grade,
				section:section,
				col:col,
				num:num				
			};
			selseatList.push(preoccupyVo);
		}
		
		var rezVo = {
				viewDate: viewDate,
				prodNo: prodNo,
				selseatList:selseatList
		};
		
		preoccupy(rezVo); // 좌석 선점
		
	});
	
	/* 취소표 알림 페이지 이동 */
	$('#cancelNotiBtn').on('click',function(){
		$('#seatForm').attr('action', pageContext+'/notireq/notireq');
		$('#seatForm').submit();
	});
	
	
	function fetchOccupy(rezVo) {
		 $.ajax({
			url: pageContext+"/selseat/occupyList",
			type : "post",
			data : rezVo,
			async : false,
			dataType: "json",
			success : function(selseatList){
				for(var selseat of selseatList){
					var grade = selseat.grade;
					if(grade == 'vip')
						grade = 'v';
					var section = selseat.section;
					var col = selseat.col;
					var num = selseat.num;
					
					$('[class='+grade+'][data-section='+section+'][data-col='+col+'][data-num='+num+']').attr("disabled",true);
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	};
	
	
	function preoccupy(rezVo){
		$.ajax({
			url: pageContext+"/reservation/preoccupy",
			type : "post",
			traditional: true,
			contentType : "application/json",
			data: JSON.stringify(rezVo),
			dataType: "json",
			success : function(rezNo){
				if(rezNo == -1) {	// 다음 단계 버튼을 누르기 전에 좌석이 예매 or 선점된 경우
					alert('예약된 좌석이 포함돼있습니다.');
					location.reload();
					return false;
				}
				$('#seatForm').append('<input type="hidden" name="rezNo" value="'+rezNo+'">');
				$('#seatForm').submit();
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
    
	
});