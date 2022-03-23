$(function(){
	
	var pageContext = $('#pageContext').val();
	
	if(confirm('진행중인 예매가 있습니다. 이어서 하시겠습니까?')== true){
		if( $('#totalPayment').val() <= 0) // 최종결제 금액이 있으면 3단계로
			$('#historyForm').attr('action', pageContext+'/reservation/selectQuantity');
		else							   // 아니면 2단계로
			$('#historyForm').attr('action', pageContext+'/reservation/confirmReservation');
		
		$('#historyForm').submit();
	}
	else{
		var rezNo = $('#rezNo').val();
		preDelNow(rezNo); // 선점 삭제
	}
	
	function preDelNow(rezNo) {
		$.ajax({
			url:pageContext+"/reservation/preDelNow",
			type : "post",
			data: {rezNo:rezNo},
			success : function(){
				$('#rezNo').remove();
				$('#historyForm').attr('action', pageContext+'/reservation/selectSeat');
				$('#historyForm').submit();
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
});