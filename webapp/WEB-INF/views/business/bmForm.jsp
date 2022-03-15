<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava Standard layout include</title>

<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonAside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">


<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="${pageContext.request.contextPath}/assets/css/bm/mysite.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>


</head>
<body>
	<div id="wrap">
		<!-- header & nav -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 종료 -->


		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">
			<div class="container zp">


				<!-- .col-xs-2 어사이드 자리 시작 -->


				<!-- aside -->
				<div id="container" class="col-xs-2 clearfix zp no-drag no-ghost">
					<div id="aside">
						<h2>사업자 페이지</h2>
						<ul>
							<li><h3>공연 관리</h3></li>
							<li><a href="${pageContext.request.contextPath}/bm/">공연 목록</a></li>
							<li><a href="#">공연 수정</a></li>
						</ul>
						<ul>
							<li><h3>문의 관리</h3></li>
							<li><a href="#">문의 관리</a></li>
						</ul>
					</div>
				</div>
				<!-- //aside -->


				<!-- 어사이드 종료 -->

				<!-- .col-xs-10 컨텐츠 출력 자리 시작 -->
				<div class="col-xs-10 zp">
					<!-- content-head -->
					<div id="content-head">
						<h3>공연 등록</h3>
						<div id="location">
							<ul>
								<li>홈</li>
								<li>사업자 페이지</li>
								<li class="last">공연 등록</li>
							</ul>
						</div>
						<div class="clear">
							<!-- 파란줄 출력 -->
						</div>
					</div>
					<!-- //content-head -->

					<div id="board">

						<div class="form-horizontal">
							<!-- 공연 제목 -->

							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연명</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="prodName" name="prodName" placeholder="공연 제목을 입력해주세요">
								</div>
							</div>

							<!-- 공연 구분 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 구분</label>

								<div class="col-md-3">
									<select class="form-control" id="prodType" name="prodType">
										<option value="1">연극</option>
										<option value="2">뮤지컬</option>
										<option value="3">콘서트</option>
										<option value="4">스포츠</option>
										<option value="5">전시</option>
									</select>
								</div>
							</div>

							<!-- 공연 기간 -->

							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 기간</label>
								<div class="col-md-4">
									<input type="date" class="form-control" id="beginShow" name="beginShow">
								</div>
								<div class="col-md-4">
									<input type="date" class="form-control" id="endShow" name="endShow">
								</div>
							</div>

							<!--예매 기간 -->

							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">예매 기간</label>
								<div class="col-md-4">
									<input type="date" class="form-control" id="beginRez" name="beginRez">
								</div>
								<div class="col-md-4">
									<input type="date" class="form-control" id="endRez" name="endRez">
								</div>
							</div>

							<!-- 오류남 -->
							<!--공연 시작 시간-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 시작시간</label>
								<div class="col-md-4">
									<input type="time" class="form-control" id="showTime" name="showTime">
								</div>
							</div>

							<!--관람 시간-->

							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">관람 시간</label>
								<div class="col-md-4">
									<input type="text" class="form-control" id="viewTime" name="viewTime">
								</div>
							</div>


							<!--관람 등급-->

							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">관람 등급</label>
								<div class="col-md-1">
									<label for="ageall">전체</label> <input type="radio" name="viewGrade" value="1">
								</div>
								<div class="col-md-1">
									<label for="age8">8세</label> <input type="radio" name="viewGrade" value="2">
								</div>
								<div class="col-md-1">
									<label for="age12">12세</label> <input type="radio" name="viewGrade" value="3">
								</div>
								<div class="col-md-1">
									<label for="age15">15세</label> <input type="radio" name="viewGrade" value="4">
								</div>
								<div class="col-md-1">
									<label for="age15">18세</label> <input type="radio" name="viewGrade" value="5">
								</div>
							</div>


							<!--좌석등급별 가격-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">등급별 가격</label>
								<!--가격 -->
								<div class="col-md-8">
									<!--좌석 선택 -->
									<div class="form-group">
										<div class="col-md-4">
											<select class="form-control" id="grade" name="grade">
												<option value="VIP">VIP석</option>
												<option value="R">R석</option>
												<option value="S">S석</option>
												<option value="A">A석</option>
												<option value="B">B석</option>
											</select>
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control" id="price" name="price">
										</div>
										&nbsp;
										<!--등급별 가격 추가 -->
										<button type="button" id="addGrade" class="btn">+</button>
										<br>
									</div>
									
									<!--좌석추가 Script -->
									<div id="bmNameArea"></div>

									<!--좌석끝 -->
								</div>
							</div>

							<!--공지사항-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공지사항</label>
								<div class="col-md-8">
									<textarea class="form-control textWay" id="notice" name="notice" placeholder="내용을 입력해주세요"></textarea>
								</div>
							</div>

							<!-- 할인 정보 자리 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">할인 정보</label>
								<div class="col-md-8">
									<div class="form-group">
										<div class="col-md-4">
											<input type="text" class="form-control" name="dcName" id="dcName" placeholder="할인 설명">
										</div>
										<div class="col-md-2">
											<select class="form-control" name="dcType" id="dcType">
												<option value="0">%</option>
												<option value="1">원</option>
											</select>
										</div>
										<div class="col-md-3">
											<input type="text" class="form-control" name="dcRate" id="dcRate" placeholder="할인율(% 또는 원)">
										</div>

										<div class="col-md-1">
											<button type="button" class="btn" id="addDis">+</button>
										</div>

									</div>
									<div class="form-group form-data">할인 정보</div>
									<div id="bmDisArea"></div>
								</div>
							</div>

							<!-- 공연 포스터 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 포스터</label>
								<div class="col-md-8">
									<input type="file" id="file0" name="file0" value="">
								</div>
							</div>

							<!-- 공연 정보 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 정보</label>
								<div class="col-md-8">
									<input type="file" id="file1" name="file1" value="">
								</div>
							</div>

							<!--캐스팅 정보 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">캐스팅 정보</label>
								<div class="col-md-8">
									<input type="file" id="file2" name="file2" value="">
								</div>
							</div>

							<!-- 부가 정보 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">부가 정보</label>
								<div class="col-md-8">
									<input type="file" id="file3" name="file3" value="">
								</div>
							</div>

							<!--예매/취소 안내-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">예매/취소 안내</label>
								<div class="col-md-8">
									<textarea class="form-control textWay" id="cancelInfo" name="cancelInfo" placeholder="내용을 입력해주세요"></textarea>
								</div>
							</div>

							<!-- 공연 등록! -->
							<div id="btnLocation">
								<button type="button" class="btn btn-primary" id="addbtn">공연 등록</button>
							</div>

						</div>

					</div>

				</div>
				<!-- col-xs-10 컨텐츠 출력 자리 종료 -->

			</div>
			<!-- container 종료 -->
		</div>
		<!-- 컨텐츠 구역 종료 -->

		<!-- footer -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>


	</div>
	<!-- wrap 종료 -->

</body>
<!-- productDisList: [{dcName:"A", dcRate: "20000", dcType: "0"}, {dcName:"S", dcRate: "20000", dcType: "1"}] -->




<script type="text/javascript">
	//등급추가 버튼
	$("#addGrade")	.on("click", function() {
			var gra = $("#grade").val();
			var selp = $("#price").val();
			console.log(gra);
			console.log(selp);

			$("#bmNameArea").append(
				'<div class="form-group">'
						+ '<div class="col-md-4">'
						+ '<input type="text" class="form-control selGrade" name="grade" value="'+gra+'" readonly>'
						+ '</div>'
						+ '<div class="col-md-4">'
						+ '<input type="text" class="form-control selPrice" name="price" value="'+selp+'" readonly>'
						+ '</div>'
						+ '&nbsp;'
						+ '<button type="button" id="delGrade" class="btn">-</button>'
				+ '</div>');
		});

	//등급삭제 버튼
	$("#delGrade").on("click", function() {
		$(".selGrade").remove();
	});

	var productDisList = []

	//할인정보 '+' 버튼 클릭될 떄
	$("#addDis").on("click", function() {
			//데이터 수집
			var dcName = $("#dcName").val();
			var dcRate = $("#dcRate").val();
			var dcType = $("#dcType").val();

			//데이터 찍어보기
			console.log(dcName);
			console.log(dcRate);
			console.log(dcType);

			if (dcType == 0) {
				$("#bmDisArea").append(
						'<div class="form-group form-data disRate">' + dcName
								+ ' (' + dcRate + '% 할인됨)' + '</div>');
			} else {
				$("#bmDisArea").append(
						'<div class="form-group form-data disRate">' + dcName
								+ ' (' + dcRate + '원 할인됨)' + '</div>');
			}

			var productDis = {
				dcName : dcName,
				dcRate : dcRate,
				dcType : dcType
			};
			productDisList.push(productDis);

		});

	//공연정보 클릭할때
	$("#addbtn").on("click", function() {
		console.log("공연저장");

		//좌석 등급별 가격 배열
		var seatpriceList = [];
		var selGradeList = $(".selGrade");
		var selPriceList = $(".selPrice");

		for (var i = 0; i < selGradeList.length; i++) {
			var seatprice = {
				grade : selGradeList.eq(i).val(),
				price : selPriceList.eq(i).val()
			};
			seatpriceList.push(seatprice);
		}

		// 상시 할인 

		var ProductVo = {
			prodName : $("#prodName").val(),
			prodType : $("#prodType").val(),
			beginShow : $("#beginShow").val(),
			endShow : $("#endShow").val(),
			beginRez : $("#beginRez").val(),
			endRez : $("#endRez").val(),
			showTime : $("#showTime").val(),
			viewTime : $("#viewTime").val(),
			viewGrade : $("input[name=viewGrade]").eq(0).val(),
			cancelInfo : $("#cancelInfo").val(),
			notice : $("#notice").val(),
			seatpriceList : seatpriceList,
			productDisList : productDisList

		}

		console.log(JSON.stringify(ProductVo));

		$.ajax({
			url : "${pageContext.request.contextPath}/bm/bmUpload",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(ProductVo), 	

			/* 성공 시 처리해야 될 코드 작성 */
			success : function(prodNo) {
				console.log(prodNo)

				//첨부파일
				var file0 = $("#file0")[0].files[0]

				var file1 = $("#file1")[0].files[0]
				var file2 = $("#file2")[0].files[0]
				var file3 = $("#file3")[0].files[0]

				fileupload(prodNo, file0, 1);
				fileupload(prodNo, file1, 2);
				fileupload(prodNo, file2, 3);
				fileupload(prodNo, file3, 4);
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});

	});

	function fileupload(prodNo, file, order) {
		var formData = new FormData();

		formData.append('prodNo', prodNo);
		formData.append('file', file);
		formData.append('order', order);

		$.ajax({
			url : "${pageContext.request.contextPath}/bm/bmfileUplad",
			type : "post",
			/* contentType : "application/json",*/
			contentType : false,
			processData : false,
			data : formData,

			/* dataType : "json", */
			success : function(result) {
				console.log(result)
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
</script>
</html>

