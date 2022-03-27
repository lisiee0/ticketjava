<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${product.vo.prodName}-티켓자바 TicketJava 리뷰 수정</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">


<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">


<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">

<!-- 개인 css -->
<link href="${pageContext.request.contextPath}/assets/css/indcom.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/product/productInfo.css" rel="stylesheet">

<!-- 제이쿼리 부트스트랩 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"> </script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"> </script>

<!-- 별점 디자인 css -->
<link href="${pageContext.request.contextPath}/assets/css/starRating.css" rel="stylesheet">


</head>


<body>
	<div id="wrap">
		<!-- header & nav -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 종료 -->


		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">
			<div class="container">
				<div class="row">
					<h2 class="pageMenu section">${product.vo.prodName}</h2>

					<div class="container bgc">
						<div class="row">
						
							<!-- 포스터 위치 -->
							<%-- <div class="col-xs-3 np">
								<img id="mainPoster" src="${pageContext.request.contextPath}/upload/${product.vo.posterPath}">
							</div>

							<div class="col-xs-6 np" id="mainInfo">
								<table id="infoTable">
									<tr>
										<th>장소</th>
										<td>${product.vo.theaterName}${product.vo.hallName}</td>
									</tr>
									<tr>
										<th>공연기간</th>
										<td>${product.vo.beginShow}~${product.vo.endShow}</td>
									</tr>
									<tr>
										<th>관람시간</th>
										<td>${product.vo.viewTime}분</td>
									</tr>
									<tr>
										<th>관람연령</th>
										<c:choose>
											<c:when test="${product.vo.viewGrade eq 1}">
												<td>전체 관람가능</td>
											</c:when>
											<c:when test="${product.vo.viewGrade eq 2}">
												<td>8세이상 관람가능</td>
											</c:when>
											<c:when test="${product.vo.viewGrade eq 3}">
												<td>12세이상 관람가능</td>
											</c:when>
											<c:when test="${product.vo.viewGrade eq 4}">
												<td>15세이상 관람가능</td>
											</c:when>
											<c:when test="${product.vo.viewGrade eq 5}">
												<td>18세이상 관람가능</td>
											</c:when>
											<c:otherwise>
												<td>미취학아동 관람불가</td>
											</c:otherwise>
										</c:choose>
									</tr>
									<tr>
										<th>가격</th>
										<td>
											<table id="priceTable">
												<c:forEach items="${product.seatPrice}" var="vo">
													<tr>
														<td>${vo.grade}석</td>
														<td>${vo.price}</td>
													</tr>
												</c:forEach>
											</table>
										</td>
									</tr>
								</table>
							</div> --%>


						</div>
					</div>
					

					<!-- 후기작성 로그인해야 보임 -->
					<div class="container bgc">

						<div class="row">

							<div>
							<form action="${pageContext.request.contextPath}/mypage/userReviewModifyAction" method="get">
								<textarea class="form-control" id="text-review" name="content" placeholder="">${reviewList.content}</textarea>
									<div> 예전 평점 : ${reviewList.rating}점 
									<div class="star-print"> <c:forEach var="i" begin="1" end="${reviewList.rating}"> ★ </c:forEach> </div> 
									</div>
								<div class="ratingStarBox">
									<!--골드스타 5점 만점 -->
									<div class="star-rating space-x-4 mx-auto">
										<input type="radio" id="5-stars" name="rating" value="5" /> <label for="5-stars" class="star pr-4">★</label> <input type="radio" id="4-stars" name="rating" value="4" />
										<label for="4-stars" class="star">★</label> <input type="radio" id="3-stars" name="rating" value="3" /> <label for="3-stars" class="star">★</label> <input type="radio"
											id="2-stars" name="rating" value="2"
										/> <label for="2-stars" class="star">★</label> <input type="radio" id="1-star" name="rating" value="1" /> <label for="1-star" class="star">★</label> 
									</div>
									
								</div>

								<input type="hidden" id="prodNo" name="prodNo" value="${reviewList.prodNo}">
								<input type="hidden" id="userNo" name="userNo" value="${authUser.userNo}">
								<input type="hidden" id="reviewNo" name="reviewNo" value="${reviewList.reviewNo}">

								<button type="submit" id="btnReviewSubmit" class="btn btn-primary position">후기 수정</button>
								</form>
							</div>


						</div>

					</div>


				</div>
			</div>


		</div>
		<!-- 컨텐츠 구역 종료 -->

		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

	</div>
	<!-- wrap 종료 -->

</body>


<!-- 지도 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2406d641e3fbe46cce1f4d732300cf88&libraries=services"></script>


<script>

//에이작스 리뷰작성 시작

//저장버튼 클릭할때 
$("#btnReviewSubmit").on("click", function() {	

	console.log("저장버튼 클릭 액션(ajax 방식)");
	//폼에 데이터를 모은다
	var review = $("#text-review").val(); // 리뷰내용
	var rating = $("[name='rating']:checked").val(); // 점수
	var prodNo = $("#prodNo").val(); // 작품번호
	var userNo = $("#userNo").val(); // 유저번호
	
	//위에서 모은 데이터를 객체로 만들기
	var reviewVo = {
			content : review,
			rating : rating,
			prodNo : prodNo,
			userNo : userNo
	}; // var guestbookVo
	
	console.log(reviewVo);
	
	$.ajax({
		url : "${pageContext.request.contextPath}/review/writeReview",
		type : "post",
		data : reviewVo, // 위에서 만든 객체를 그대로 이어 쓴다
		
		success : function(result) {
			/*성공시 처리해야될 코드 작성*/
			console.log(result);
			render(result, "up")

			//입력버튼 초기화 
			$("#text-review").val(""); // 리뷰내용
			$("[name='rating']:checked").prop("checked", false); // 점수

		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	}); // ajax
}); // #btnSubmit function
 

function render(reviewVo, updown) { // 1명씩 정보를 받아 처리 button의 data-no 소문자만 인식 대문자넣으면 에러 
	console.log("테이블 출력");
	var str = '';
	str += ' 	<tr> ';
	str += ' 		<td><span class="star"> ★★★★★ <span style="width: ' + reviewVo.rating*2 + '0%;">★★★★★</span> ';
	str += ' 		<input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="5"></span> ' + reviewVo.rating + '</td> ';
	str += ' 		<td> ' + reviewVo.content + '</td> ';
	str += ' 		<td> ' + reviewVo.userName + '</td> ';
	str += ' 		<td> ' + reviewVo.regDate + '<input type="hidden" name="userNo" value=" ' + reviewVo.userNo + ' "></td> ';
	str += ' 	</tr> ';
	str += ' ';
	
	if (updown == 'down') {
		$("#reviewListArea").append(str); // .html 을 쓰면 바꿔치는 기능때문에 마지막글 만 출력 
	} else if (updown == 'up') {
		$("#reviewListArea").prepend(str);
	} else {
		console.log("방향오류");
	};

};			

//에이작스 리뷰작성 종료


	$(function(){
		var viewDate = $('#viewDate').val();
		if ( viewDate != ''){
			window.open('', 'reserve', 'width=960, height=800, left=300, top=100');
			$('#rezArea').submit();
		}
	});

	var today = new Date();
	var beginshow = new Date($('#beginshow').val());
	var md = new Date();

	if(today>beginshow) {
		md= today;
	}
	else {
		md= beginshow;
	}
	
	$("#rezCal").datepicker({

		minDate : new Date(md),
	  	maxDate : new Date($('#endshow').val())
	});
	
	$("#rezBtn").on("click", function() {
		
		var year= $('.-selected-').data('year');
		var month= $('.-selected-').data('month');
		month = month + 1;
		var date= $('.-selected-').data('date');
		
		if(year==null) {
			alert('희망 관람일을 선택하세요');
			return false;
		}
		
		if(month<10) {
			month= "0"+month;
		}
		if(date<10) {
			date= "0"+date;
		}
		
		var viewDate = year+'-'+month+'-'+date;
		var prodNo = $('#prodNo').val();

		console.log(viewDate+' '+prodNo);
		$('#viewDate').val(viewDate);
		
		/* window.open('${pageContext.request.contextPath}/reservation/selectSeat?prodNo='+prodNo+'&viewDate='+viewDate, 'reserve', 'width=960, height=800, left=300, top=100'); */
	 	window.open('', 'reserve', 'width=960, height=800, left=300, top=100');
	});
	
	
	 /* 리뷰 별점 */
	const drawStar = (target) => {
    document.querySelector('.star span').style.width = '${target.value * 20}%';
  	};
		
	/* 공연장 정보 지도 */
	var mapContainer = document.getElementById('map'),   // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch('${product.theater.address}', function(result, status) {
	
	    // 정상적으로 검색이 완료됐으면 
	     if (status === kakao.maps.services.Status.OK) {
	
	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });

	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});    	
		
	function PageMove(page) {

		location.href = "${pageContext.request.contextPath}/product/info?prodNo=${param.prodNo}&crtPage=" + page+ "#review"
	}
	
	
	
	
</script>


</html>




