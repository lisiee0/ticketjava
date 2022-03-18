<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
$(function(){
	$('#nextBtn').on('click', function(){
		var rezNo = ${param.rezNo};
		var phone = $('#phone').val();
		var email = $('#email').val();
		
		var rezVo = {
			rezNo:rezNo,
			phone:phone,
			email:email
		};
		
		console.log(rezVo);
		$.ajax({
			url: "${pageContext.request.contextPath}/reservation/finalPayment",
			type : "post",
			data : rezVo,
			dataType: "json",
			success : function(result){
				if(result == 'fail'){
					alert('선점이 만료됐습니다. 처음부터 진행해주세요');
					$('#rezNo').remove();
					$('#confirmForm').attr('action', '${pageContext.request.contextPath}/reservation/selectSeat');
					$('#confirmForm').submit();
				}
				else{
					alert('예매 완료');
					opener.location.href = "${pageContext.request.contextPath}/mypage/reserveDetail?rezNo="+rezNo;
					window.close();
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
	});
	
})
</script>