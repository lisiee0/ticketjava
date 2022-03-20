$(function(){
	var pageContext = $('#pageContext').val();
	var viewDate = $('[name=viewDate]').val();
	var prodNo = $('[name=prodNo]').val();
	
	var rezVo = {
			viewDate: viewDate ,
			prodNo: prodNo
	};
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
	
	var gradeList = $('#priceTable tr');
	for(var i=0; i<gradeList.length; i++){
		var gradetr = gradeList.eq(i);
		var grade = gradetr.data('grade');
		if(grade=='vip'){
			grade = 'v';
		}
		
		var notOccupy = $('#seatPlanDiv input[type=checkbox].'+grade+':not(:disabled)');
		var remaining = notOccupy.length;
		
		gradetr.find('.remaining').text(remaining+'석');
	}
	
	
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
	
	
	$('#seatPlanDiv').on('change','table td input[type=checkbox]' ,function(){
		if(! this.checked){
			$('#tr'+$(this).attr('id')).remove();
		}
		
		
	});
	
	$('#nextBtn').on('click', function(){
		
		var chkbox = $('[type=checkbox]:checked').get();
		
		if(chkbox.length <= 0){
			alert('좌석을 선택해주세요');
			return false;
		}
		
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
		
		
		$.ajax({
			url: pageContext+"/reservation/preoccupy",
			type : "post",
			traditional: true,
			contentType : "application/json",
			data: JSON.stringify(rezVo),
			dataType: "json",
			success : function(rezNo){
				console.log(rezNo);
				
				$('#seatForm').append('<input type="hidden" name="rezNo" value="'+rezNo+'">');
				$('#seatForm').submit();
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		 
		
	});
	
	$('#cancelNotiBtn').on('click',function(){
		$('#seatForm').attr('action', pageContext+'/notireq/notireq');
		$('#seatForm').submit();
	});
});