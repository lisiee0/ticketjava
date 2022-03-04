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
							<li><a href="#">공연 등록</a></li>
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

						<form action="${pageContext.request.contextPath}/bm/bmInquiry	" method="post" class="form-horizontal">

							<!-- 공연장명 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연장명</label>
								<!-- 공연장명-->
								<div class="col-md-8">
									<div class="form-group">
										<div class="col-md-4">
											<input type="text" class="form-control" id="addWhere" name="" placeholder="세종문화회관 1관" readonly>
										</div>
										<div class="col-md-3">
											<a href="${pageContext.request.contextPath}/bm/bmInquiry" class="btn btn-primary">검색</a>
										</div>
									</div>
								</div>
							</div>

							<!-- 공연 제목 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연명</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="" name="prodName" placeholder="공연 제목을 입력해주세요">
								</div>
							</div>

							<!-- 공연 구분 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 구분</label>

								<div class="col-md-3">
									<select class="form-control">
										<option value="1" name="prodType" selected="selected">연극</option>
										<option value="2" name="prodType">뮤지컬</option>
										<option value="3" name="prodType">콘서트</option>
										<option value="4" name="prodType">스포츠</option>
										<option value="5" name="prodType">전시</option>
									</select>
								</div>
							</div>

							<!-- 공연 기간 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 기간</label>
								<div class="col-md-4">
									<input type="date" class="form-control" id="" name="beginShow">
								</div>
								<div class="col-md-4">
									<input type="date" class="form-control" id="" name="endShow">
								</div>
							</div>

							<!--예매 기간 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">예매 기간</label>
								<div class="col-md-4">
									<input type="date" class="form-control" id="" name="beginRez">
								</div>
								<div class="col-md-4">
									<input type="date" class="form-control" id="" name="endRez">
								</div>
							</div>

							<!--공연 시작 시간-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 시작시간</label>
								<div class="col-md-4">
									<input type="time" class="form-control" id="" name="showTime">
								</div>
							</div>

							<!--관람 시간-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">관람 시간</label>
								<div class="col-md-4">
									<input type="text" class="form-control" id="" name="viewTime">
								</div>
							</div>

							<!--관람 등급-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">관람 등급</label>
								<div class="col-md-1">
									<label for="ageall">전체</label> <input type="radio" id="ageall" name="viewGrade" value="1">
								</div>
								<div class="col-md-1">
									<label for="age8">8세</label> <input type="radio" id="age8" name="viewGrade" value="2">
								</div>
								<div class="col-md-1">
									<label for="age12">12세</label> <input type="radio" id="age12" name="viewGrade" value="3">
								</div>
								<div class="col-md-1">
									<label for="age15">15세</label> <input type="radio" id="age15" name="viewGrade" value="4">
								</div>
								<div class="col-md-1">
									<label for="age15">18세</label> <input type="radio" id="age15" name="viewGrade" value="5">
								</div>
							</div>

							<!--좌석등급별 가격-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">등급별 가격</label>
								<!-- 가격 -->
								<div class="col-md-8">
									<!-- VIP석 -->
									<div class="form-group">
										<div class="col-md-4">
											<input type="text" class="form-control" id="" name=grade value="" placeholder="VIP석" readonly>
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control" id="" name="price" placeholder="가격을 입력해주세요">
										</div>
										<div class="col-md-1">
											<button type="button" class="btn" id="addbtn">-</button>
										</div>

									</div>

									<!-- 좌석끝 -->

									<!-- 좌석 선택 -->
									<div class="form-group">
										<div class="col-md-4">
											<select class="form-control">
												<option name="grade" value="1">VIP석</option>
												<option name="grade" value="2">R석</option>
												<option name="grade" value="3">S석</option>
												<option name="grade" value="4">A석</option>
												<option name="grade" value="5">B석</option>
												<option value="" selected="selected">좌석</option>
											</select>
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control" id="" name="price" value="">
										</div>
										<div class="col-md-1">
											<button type="button" class="btn" id="addbtn">+</button>
										</div>
									</div>

								</div>
							</div>

							<!--공지사항-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공지사항</label>
								<div class="col-md-8">
									<textarea class="form-control textWay" name="notice" value="" placeholder="내용을 입력해주세요"></textarea>
								</div>
							</div>

							<!-- 할인 정보 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">할인 정보</label>
								<!-- 정보-->
								<div class="col-md-8">
									<!-- VIP석 -->
									<div class="form-group">
										<div class="col-md-4">
											<input type="text" class="form-control" name="dcname" value="" placeholder="할인 설명">
										</div>
										<div class="col-md-3">
											<input type="text" class="form-control" name="dcrate" value="" placeholder="할인율 (%)">
										</div>
										<div class="col-md-1"></div>
										<div class="col-md-1">
											<button type="button" class="btn" id="addbtn">+</button>
										</div>

									</div>
									<div class="form-group form-data">지역 거주자 할인(20%)</div>
									<div class="form-group form-data">재관람 할인(30%)</div>
								</div>
							</div>

							<!-- 공연 포스터 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 포스터</label>
								<div class="col-md-8">
									<input type="file" id="" name="posterpath" value="">
								</div>
							</div>

							<!-- 공연 정보 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">공연 정보</label>
								<div class="col-md-8">
									<input type="file" id="" name="pordpath" value="">
								</div>
							</div>

							<!-- 캐스팅 정보 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">캐스팅 정보</label>
								<div class="col-md-8">
									<input type="file" id="" name="castingpath" value="">
								</div>
							</div>

							<!-- 부가 정보 -->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">부가 정보</label>
								<div class="col-md-8">
									<input type="file" id="" name="addedpath" value="">
								</div>
							</div>


							<!--예매/취소 안내-->
							<div class="form-group">
								<label class="form-text col-md-2 form-id" for="">예매/취소 안내</label>
								<div class="col-md-8">
									<textarea id="" name="" class="form-control textWay" name="cancelInfo" value="" placeholder="내용을 입력해주세요"></textarea>
								</div>
							</div>

							<!-- 공연 등록! -->
							<div id="btnLocation">
								<button type="submit" class="btn btn-primary" id="addbtn">공연 등록</button>
							</div>

						</form>
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
</html>
