$(function(){
	var dupCheck = false;
	var emailCheck = false;

	
	var pageContext = $('#pageContext').val();
	
	$("#bizman").change(function(){
		if(this.checked){
			$("#usertype").after('<tr id="bizno">'+
								 	 '<th>사업자등록번호</th>'+
								 	 '<td colspan="3"><input class="form-control" name="bizno" type="text" placeholder="사업자등록번호"></td>'+
								 '</tr>');
		}
	});
	
	$("#personal").change(function(){
		if(this.checked){
			$("#bizno").remove();
		}
	});
	
	$('[name=id]').on('focusout',function(){
		var id = $('[name=id]').val();
		if(id.length <= 0){
			dupCheck = false;
			return false;
		}
		
		$.ajax({
			url: pageContext+"/user/dupCheck",
			type : "post",
			data: {id:id},
			dataType:"json",
			success : function(isDup){
				if(isDup == true){
					$('#dupText').html('<span id="failText">아이디 중복입니다. 다른 아이디를 사용해주세요.</span>');
					dupCheck = false;
				}
				else{
					$('#dupText').html('<span id="successText">사용 가능한 아이디입니다.</span>');
					dupCheck = true;
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	$('#sendMailBtn').on('click',function(){
		$('#keyArea').show();
		$('#keyArea').append('<th></th>'+
							 '<td colspan="2"><input id="authKey" class="form-control" type="text" placeholder="인증번호"></td>'+
							 '<td class="outlineBtn"><button id="checkKeyBtn" class="form-control btn-outline-primary" type="button">확인</button></td>'
							 );
		
		var email = $('#email').val();
		$.ajax({
			url: pageContext+"/mail/sendMailAuth",
			type : "post",
			data: {email:email},
			success : function(){
				alert('인증번호가 메일로 발송됐습니다.');
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	$('#keyArea').on('click','#checkKeyBtn' ,function(){
		var email = $('#email').val();
		var authKey = $('#authKey').val();
		var authInfo = {
			email:email,
			authKey:authKey
		};
		
		$.ajax({
			url: pageContext+"/mail/checkMailAuth",
			type : "post",
			data: JSON.stringify(authInfo),
			contentType:'application/json',
			dataType:"json",
			success : function(result){
				if(result == "success"){
					alert('인증완료');
					$('#email').attr('readonly',true);
					$('#authKey').attr('readonly',true);
					emailCheck = true;
				}
				else{
					alert('인증번호가 일치하지 않습니다.');
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	$('#joinBtn').on('click',function(){
		if( $('[name=id]').val() == '')
			alert('아이디를 입력해주세요');
		else if( $('[name=password]').val() == '')
			alert('비밀번호를 입력해주세요');
		else if( $('[name=passwordCheck]').val() == '')
			alert('비밀번호 확인을 입력해주세요');
		else if( $('[name=name]').val() == '')
			alert('이름을 입력해주세요');
		else if( $('[name=phone]').val() == '')
			alert('전화번호를 입력해주세요');
		else if( $('[name=postcode]').val() == '')
			alert('우편번호와 주소를 입력해주세요');
		else if( $('[name=address2]').val() == '')
			alert('상세주소를 입력해주세요');
		else if( $('[name=email]').val() == '')
			alert('이메일을 입력해주세요');
		else if( $('[name=usertype]:checked').val() == 2    &&   $('[name=bizno]').val() == '' )
			alert('사업자등록번호를 입력해주세요');
		else if(! dupCheck )
			alert('아이디 중복체크 해주세요');
		else if( $('[name=password]').val() != $('[name=passwordCheck]').val() )
			alert('비밀번호가 일치하지 않습니다');
		else if(! emailCheck )
			alert('메일 인증 해주세요');
		else if(! $('#agreeCheck').is(':checked'))
			alert('약관에 동의해주세요');
		else
			$('#jform').submit();
	});
	
});