$(function(){
	var pageContext = $('#pageContext').val();
	var viewDate = $('[name=viewDate]').val();
	var prodNo = $('[name=prodNo]').val();
	
	/* 좌석 선택 기능 막기 */
	$('input[type=checkbox]').on('click',function(){
		return false;
	});
	
	/* 알림 횟수 select option */
	$("#side #count select").append('<option value="1000000">계속</option>');
	for(var i=1; i<=10 ; i++){
		$("#side #count select").append('<option value="'+i+'">'+i+'</option>');
	}
	
	var rezVo = {
			viewDate: viewDate ,
			prodNo: prodNo
	};
	
	fetchOccupy(rezVo); // 예매된 좌석 가져오기
	
	var sectionTable = $('table tr th');
	
	for(var i=0; i<sectionTable.length;i++){ // 구역별 반복
		var section = sectionTable.eq(i).text();
		
		var remaining = $('#seatPlanDiv input[type=checkbox][data-section='+section+']:not(:disabled)').length; // 잔여석
		
		if(remaining > 0)
			$('#sectionBtn').append('<label class="btn btn-primary" disabled><input type="radio" name="section" autocomplete="off">'+ section +'</label>');
		else
			$('#sectionBtn').append('<label class="btn btn-primary"><input type="radio" name="section" autocomplete="off">'+ section +'</label>');
		
	}
	
	var notireqVo = {
		prodNo : prodNo,
		viewDate : viewDate
	};
	
	fetchMyReq(notireqVo); // 나의 신청 가져오기
	
	if($('#myReqDetail').text() != '') { 
		$('#btnArea').html('<button id="reqDel" type="button" class="btn-default">알림 취소</button>');
	}
	else{
		$('#btnArea').html('<button id="notiReqBtn" type="button" class="btn-primary">알림 신청</button>');
	}
	
	
	/* 알림 신청 버튼 클릭시  */
	$('#button').on('click','#notiReqBtn',function(){
		var selSection = $('label.active').text();
		
		if(selSection == ''){
			alert('구역을 선택해주세요');
			return false;
		}
		
		var notiTimes = $('#count select').val();
		var notireqVo = {
				prodNo:prodNo,
				viewDate:viewDate,
				selSection:selSection,
				notiTimes:notiTimes
		}
		addNotireq(notireqVo);
	});

	/* 신청 취소 버튼 클릭 시 */
	$('#button').on('click','#reqDel',function(){
		var notireqVo = {
				prodNo:prodNo,
				viewDate:viewDate
		}
		deleteNotireq(notireqVo);
		
	});
	
	/* 예매로 돌아가기 링크 클릭 시 */
	$('#reserveGo').on('click', function(){
		$('#reqForm').attr('action',pageContext+'/reservation/selectSeat');
		$('#reqForm').submit();
		return false;
	});
	
	
	function fetchOccupy(rezVo){
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
	}
	
	function fetchMyReq(notireqVo) {
		$.ajax({
			url: pageContext+"/notireq/myNotireq",
			type : "post",
			data : notireqVo,
			async : false,
			dataType: "json",
			success : function(notireqVo){
				console.log(notireqVo);
				var selSection = notireqVo.selSection;
				
				if(selSection == null) {
					return false;
				}
				
				var notiTimes = notireqVo.notiTimes;
				if(notiTimes > 100)
					notiTimes = '계속';
				else
					notiTimes += '회';
				
				$('#myReqDetail').html('<p>선택 구역 : '+selSection + '</p><p>남은 횟수 : '+notiTimes+'</p>');
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	
	function addNotireq(notireqVo){
		$.ajax({
			url: pageContext+"/notireq/addNotireq",
			type : "post",
			data : notireqVo,
			dataType: "json",
			success : function(result){
				if(result == 'fail')
					alert('신청이 존재합니다');
				else{
					if(notiTimes > 100)
						notiTimes = '계속';
					else
						notiTimes += '회';
					alert('신청됐습니다');
					$('#myReqDetail').html('<p>선택 구역 : '+selSection + '</p><p>남은 횟수 : '+notiTimes+'</p>');
					$('#btnArea').html('<button id="reqDel" type="button" class="btn-default">알림 취소</button>');
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	function deleteNotireq(notireqVo){
		$.ajax({
			url: pageContext+"/notireq/reqDel",
			type : "post",
			data : notireqVo,
			dataType: "json",
			success : function(result){
				if(result == "success"){
					alert('취소됐습니다');
					$('#myReqDetail').html('');
					$('#btnArea').html('<button id="notiReqBtn" type="button" class="btn-primary">알림 신청</button>');
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
});