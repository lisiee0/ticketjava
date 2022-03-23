$(function(){
	var pageContext = $('#pageContext').val();
	
	/* 다음 단계 버튼 클릭 시 */
	$('#nextBtn').on('click', function(){
		var phone = $('#phone').val();
		var email = $('#email').val();
		
		/* 입력, 체크박스 체크 확인 */
		if(phone == '')
			alert('휴대폰 번호를 입력해주세요');
		else if(email == '')
			alert('이메일을 입력해주세요');
		else if(! ( $('#agreeCheck1').is(':checked') && $('#agreeCheck2').is(':checked') ) )
			alert('약관에 모두 동의해주세요');
		else{
			var rezNo = $('#rezNo').val();
			var phone = $('#phone').val();
			var email = $('#email').val();
			
			var rezVo = {
				rezNo:rezNo,
				phone:phone,
				email:email
			};
			
			var IMP = window.IMP;
	        IMP.init('iamport'); 
	        IMP.request_pay({
	        	pg: 'inicis',
	            pay_method: 'card',
	            merchant_uid: 'merchant_' + new Date().getTime(),
	            name: '주문명:결제테스트',
	            amount: 100, 

	            buyer_email: 'test@test.com',
	            buyer_name: 'test',
	            buyer_tel: '010-1234-5678',
	            m_redirect_url: 'https://www.yourdomain.com/payments/complete'

	        }, function (rsp) {
	            if (rsp.success) {
					
	            } else {
					finalPayment(rezVo);
	            }
	        });
        
        
			
		}
	});
	
	/* 최종 결제 */
	function finalPayment(rezVo) {
		$.ajax({
			url: pageContext+"/reservation/finalPayment",
			type : "post",
			data : rezVo,
			dataType: "json",
			success : function(result){
				if(result == 'fail'){
					alert('선점이 만료됐습니다. 처음부터 진행해주세요');
					$('#rezNo').remove();
					$('#confirmForm').attr('action', pageContext+'/reservation/selectSeat');
					$('#confirmForm').submit();
				}
				else{
					alert('예매 완료');
					opener.location.href = pageContext+"/mypage/reserveDetail?rezNo="+rezVo.rezNo;
					window.close();
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	$("#check_module").click(function () {
        
    });
	
});