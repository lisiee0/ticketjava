<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation4.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reservation/reservation5.css" rel="stylesheet" type="text/css">


</head>

<body>

	<div id="containerBody">
		<div id="header">
			<h1>티켓자바 예매</h1>
		</div>
	
		<div id="menubar">
			<ul class="clearfix">
				<li>등급/좌석선택</li>
				<li>할인/매수선택</li>
				<li id="curMenu">예매확인</li>
				<li id="lastMenu">결제</li>
			</ul>
		</div>
		
		<div id="main">
			
			<h2>주문자 정보</h2>
			<div id="ordererInfo">
				<table>
					<colgroup>
						<col style="width:15%">
						<col style="width:30%">
						<col style="width:15%">
						<col style="">
					</colgroup>
					<tr>
						<th>이름</th>
						<td>황일영</td>
						<th>휴대폰 번호</th>
						<td><input id="phone" class="form-control" type="text" value="01012345678"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td colspan="3"><input id="email" class="form-control" type="text" value="asd@naver.com" size="80"></td>
					</tr>
				</table>				
			</div>
			
			<h2>예매자 확인</h2>
			<div id="agreeChk">
				<table>
					<tr>
						<td><input type="checkbox"></td>
						<td>
							주문자 확인 및 예매처리를 위해 휴대폰번호, 이메일, (배송수령 시)주소, (입력필요 시)생년월일을 수집하며,이용목적 달성 이후 파기합니다.
						</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>
							개인정보 제 3자 제공에 동의합니다. (고객응대 및 관람정보안내 등을 위함)
						</td>
					</tr>
				</table>
			</div>
			
		</div>
			
		<div id="side">
			<div id="price">
				<h2>예매정보</h2>
				<div id="prodInfo">
					<table>
						<col style="width:18%">
						<col style="">
						<tr>
							<td id="poster"><img src="${pageContext.request.contextPath}/assets/image/seatType/${rezProdInfo.posterPath}"></td>
							<td id="prodName"> ${rezProdInfo.prodName} </td>
						</tr>
					</table>
				</div>
				<div id="choiceTable">
					<table>
						<colgroup>
							<col style="width:28%">
							<col style="">
						</colgroup>
						<c:forEach items="${map.selList}" var="vo">
							<tr>
								<td>${fn:toUpperCase(vo.grade)}석</td>
								<td class="right">${vo.section}구역 ${vo.col}열 ${vo.num}번</td>
							</tr>
						</c:forEach>
						<!-- <tr>
							<td>VIP석</td>
							<td class="right">A구역 1열 4번</td>
						</tr>
						<tr>
							<td>S석</td>
							<td class="right">B구역 4열 12번</td>
						</tr> -->
					</table>
				</div>
				
				<div id="reInfo">
					<table>
						<colgroup>
							<col style="width:30%">
							<col style="">
						</colgroup>
						<tr>
							<td>일시</td>
							<td class="right">${param.viewDate} ${rezProdInfo.showTime}</td>
						</tr>
						<tr>
							<td>티켓금액</td>
							<td class="right">${map.rezVo.totalPayment-2000}</td>
						</tr>
						<tr>
							<td>수수료</td>
							<td class="right">2000</td>
						</tr>
						<tr id="payTr">
							<td>총결제</td>
							<td class="right" id="payment">${map.rezVo.totalPayment}</td>
						</tr>
					</table>
				</div>
				
			</div>
			<div id="button">
				<div class="clearfix" id="prevNext">
					<button class="btn-outline-primary" type="button" id="prevBtn">이전단계</button>
					<button class="btn-primary" type="button" id="paymentBtn">결제하기 </button> 
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	$('#paymentBtn').on('click', function(){
		var rezNo = <c:out value="${param.rezNo}" />;
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
				alert('예매 완료');
				opener.location.href = "${pageContext.request.contextPath}/mypage/reserveDetail?rezNo="+rezNo;
				window.close();				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
		
		/* 
		$.ajax({
			url: "${pageContext.request.contextPath}/reservation/modifyStatus",
			type : "post",
			data : {rezNo: rezNo},
			dataType: "json",
			success : function(result){
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		}); */
		
	});
</script>
	
</html>