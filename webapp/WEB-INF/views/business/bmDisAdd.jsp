<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html>

<head>
<meta charset="UTF-8">
<title>TicketJava 티켓자바 - 할인 추가</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">


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
						<col style="width:30%;">
						<col style="width:30%;">
						<col style="width:20%;">
						<col style="">
					</colgroup>
					<tr>
						<th class="dateHead disHalf" colspan="2">기간</th>
						<th class="dateHead">할인</th>
						<th class="dateHead">가격</th>
					</tr>
					<tr>
						<td><input id="beginDc" class="form-control" type="date" name="beginDc"></td>
						<td><input id="endDc" class="form-control" type="date" name="endDc"></td>
						<td>
							<select id="dcType" class="form-control" name="dcType">
								<option value="0">%</option>
								<option value="1">원</option>
							</select>
						</td>
						<td><input id="dcRate" class="form-control" type="text" name="dcRate" placeholder="% 또는 원"></td>
						
					</tr>
					<tr>
						<td colspan="3">
							<input id="dcName" class="form-control" type="text" placeholder="할인 설명">
						</td>
						<td>
							<button id="addBtn" class="btn btn-default" type="button">+</button>
						</td>
					</tr>
				</table>
			</div>



			<div id="listArea" class="disTable">

			</div>

			<!-- 적용버튼 -->
			<div id="submitBtn">
				<button id="submitBtn2" class="btn btn-default" type="button">닫기</button>
			</div>

		</div>
		<!-- 창 끝 -->
		<div></div>

		<!-- Footer X -->
	</div>
	<!-- wrap 끝 -->

</body>

<script>
	
	$("#submitBtn2").on("click", function() {
		close();
	});
	
	$(document).ready(function() {
		// 이벤트 할인리스트 출력
		fetchList();
	});

	// '등록'버튼 클릭될때
	$("#addBtn").on("click", function() {
		// 데이터 수집
		var beginDc = $("#beginDc").val();
		var endDc = $("#endDc").val();
		var dcType = $("#dcType").val();
		var dcRate = $("#dcRate").val();
		var dcName = $("#dcName").val();
		var prodNo = '<c:out value="${param.prodNo}"/>';

		// 객체 만들기
		var DiscountVo = {
			beginDc : beginDc,
			endDc : endDc,
			dcType : dcType,
			dcRate : dcRate,
			dcName : dcName,
			prodNo : prodNo
		};

		$.ajax({

			url : "${pageContext.request.contextPath}/discount/addDis",
			type : "post",
			// contentType : "application/json",
			data : DiscountVo,

			dataType : "json",
			success : function(DiscountVo) {
				/*성공시 처리해야될 코드 작성*/
				render(DiscountVo, "up");

				// 입력 데이터 초기화
				$("#beginDc").val("");
				$("#endDc").val("");
				$("#dcType").val("");
				$("#dcRate").val("");
				$("#dcName").val("");
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	// '삭제' 버튼눌렀을때
	$("#listArea").on("click", "#delBtn", function() {
		var no= $(this).data("no");
		
		$.ajax({

			url : "${pageContext.request.contextPath}/discount/delDis",
			type : "post",
			// contentType : "application/json",
			data : { dcNo : no },

			dataType : "json",
			success : function(dcNo) {
				/*성공시 처리해야될 코드 작성*/
				$("#a"+dcNo).remove();
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});	
	});
	
	
	// 리스트 출력
	function fetchList() {

		$.ajax({

			url : "${pageContext.request.contextPath}/discount/getList",
			type : "post",
			// contentType : "application/json",
			data : { prodNo : ${param.prodNo} },

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

		var dcType= vo.dcType;
		if(dcType ==  0)
			dcType='%';
		else
			dcType='원';
		
		var str = '';
		str += ' <table id="a'+vo.dcNo+'"> ';
		str += ' 	<colgroup> ';
		str += ' 		<col style="width: 55%;"> ';
		str += ' 		<col style="width: 15%;"> ';
		str += ' 		<col style="width: 20%;"> ';
		str += ' 		<col style="width: 10%;"> ';
		str += ' 	</colgroup> ';
		str += ' 	<tr> ';
		str += ' 		<td>'+vo.beginDc+' ~ '+vo.endDc+'</td> ';
		str += ' 		<td>'+vo.dcRate+''+dcType+'</td> ';
		str += ' 		<td>'+vo.dcName+'</td> ';
		str += ' 		<td><button id="delBtn" class="btn btn-outline-primary" type="button" data-no="'+vo.dcNo+'">삭제</button></td> ';
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