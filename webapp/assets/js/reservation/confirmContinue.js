$(function(){
	var pageContext = $('#pageContext').val();
	if(confirm('진행중인 예매가 있습니다. 이어서 하시겠습니까?')== true){
		if( $('#totalPayment').val() <= 0){
			$('#historyForm').attr('action', pageContext+'/reservation/selectQuantity');
		}
		else{
			$('#historyForm').attr('action', pageContext+'/reservation/confirmReservation');
		}
		$('#historyForm').submit();
	}
	else{
		var rezNo = $('#rezNo').val();
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