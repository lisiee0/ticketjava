<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html>

<head>
<meta charset="UTF-8">
<title>TicketJava layout 표준 그리드</title>

<!-- 부트스트랩 (원준이 커스텀 컬러 #6697f2 primary) -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">

<!-- 개인 css -->
<link href="${pageContext.request.contextPath}/assets/css/bm/bmNewTab.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/bm/bmDisAdd.css" rel="stylesheet">


<script type="text/javascript" src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>

</head>

<body>
	<div id="wrapMain">
		<div></div>
		<!-- 창 -->

		<div id="result">

			<!-- head -->
			<h2>할인정보 추가</h2>

			<!-- 상품명/공연장/할인 적용 -->
			<div class="addTop">
				<h3>상품명</h3>
				<p>${prodDis.prodHallName.prodName}</p>
			</div>
			
			<div class="addTop">
				<h3>공연장</h3>
				<p>${prodDis.prodHallName.hallName}</p>
			</div>

			<!-- 할인 시작 -->
			<div class="addTop">
				<h3>이벤트 할인</h3>
			</div>

			<!-- 할인 적용된 리스트 -->
			<div class="disTable">
				<table id="dateDiscount">
					<colgroup>
						<col style="">
						<col style="">
						<col style="">
						<col style="width: 75%">
						<col style="">
					</colgroup>
					<tr>
						<th class="dateHead disHalf" colspan="2">기간</th>
						<th class="dateHead">할인</th>
						<th class="dateHead">가격</th>
					</tr>
					<tr>
						<td><input class="form-control" type="date" name="beginDc"></td>
						<td><input class="form-control" type="date" name="endDc"></td>
						<td><select class="form-control" name="dcType">
								<option value="0">%</option>
								<option value="1">원</option>
						</select></td>
						<td><input class="form-control" type="text" name="dcRate" placeholder="% 또는 원"></td>
						<td>
							<button class="btn btn-default" type="button">+</button>
						</td>
					</tr>
					<tr>
						<td colspan="4"><input class="form-control" type="text" placeholder="할인 설명"></td>
					</tr>

				</table>
			</div>



			<div id="listArea" class="disTable">

			</div>

			<!-- 적용버튼 -->
			<div id="submitBtn">
				<button id="submitBtn2" class="btn btn-default" type="button">적용</button>
			</div>

		</div>
		<!-- 창 끝 -->
		<div></div>

		<!-- Footer X -->
	</div>
	<!-- wrap 끝 -->

</body>

<script>

	$(document).ready(function() {
		// 이벤트 할인리스트 출력
		fetchList();
	});

	
	
	// 리스트 출력
	function fetchList() {

		$.ajax({

			url : "${pageContext.request.contextPath}/discount/getList",
			type : "post",
			// contentType : "application/json",
			// data : {name: "홍길동"},

			dataType : "json",
			success : function(dList) {
				/*성공시 처리해야될 코드 작성*/
				console.log(dList);

				for (var i = 0; i < dList.length; i++) {
					render(dList[i], "down"); // 이벤트 할인 리스트 그리기
				}

			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	};

	
	// 리스트 그리기
	function render(vo, updown) {

		var str = '';
		str += ' <table> ';
		str += ' 	<colgroup> ';
		str += ' 		<col style="width: 55%;"> ';
		str += ' 		<col style="width: 10%;"> ';
		str += ' 		<col style="width: 25%;"> ';
		str += ' 		<col style="width: 10%;"> ';
		str += ' 	</colgroup> ';
		str += ' 	<tr> ';
		str += ' 		<td>'+vo.beginDc+' ~ '+vo.endDc+'</td> ';
		str += ' 		<td>'+vo.dcRate+'</td> ';
		str += ' 		<td>'+vo.dcName+'</td> ';
		str += ' 		<td><button class="btn btn-outline-primary" type="button">삭제</button></td> ';
		str += ' 	</tr> ';
		str += ' </table> ';

		if (updown == 'down') {
			$("#listArea").append(str);
		} else if (updown == 'up') {
			$("#listArea").prepend(str);
		} else {
			console.log("updown error");
		}
	};
</script>



</html>