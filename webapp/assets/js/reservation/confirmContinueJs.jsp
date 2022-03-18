<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	$(function(){
		if(confirm('진행중인 예매가 있습니다. 이어서 하시겠습니까?')== true){
			if( ${param.totalPayment} <= 0){
				$('#historyForm').attr('action', '${pageContext.request.contextPath}/reservation/selectQuantity');
			}
			else{
				$('#historyForm').attr('action', '${pageContext.request.contextPath}/reservation/confirmReservation');
			}
			$('#historyForm').submit();
		}
		else{
			var rezNo = ${param.rezNo};
			$.ajax({
				url: "${pageContext.request.contextPath}/reservation/preDelNow",
				type : "post",
				data: {rezNo:rezNo},
				success : function(){
					$('#rezNo').remove();
					$('#historyForm').attr('action', '${pageContext.request.contextPath}/reservation/selectSeat');
					$('#historyForm').submit();
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		}
	});
</script>