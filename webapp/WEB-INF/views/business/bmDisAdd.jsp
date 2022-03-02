<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
<meta charset="UTF-8">
<title>TicketJava layout 표준 그리드</title>

<!-- 부트스트랩 (원준이 커스텀 컬러 #6697f2 primary) -->
<link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">

<!-- 개인 css -->
<link href="assets/css/bmNewTab.css" rel="stylesheet">
<link href="assets/css/bmDisAdd.css" rel="stylesheet">

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
				<ol>
					<h3>상품명</h3>
					<li>라이온 킹</li>
				</ol>
			</div>
			<div class="addTop">
				<ol>
					<h3>공연장</h3>
					<li>세종문화회관 1관</li>
				</ol>
			</div>

			<!-- 할인 시작 -->
			<div class="addTop">
				<ol>
					<h3>일반 할인</h3>
				</ol>
			</div>

			<!-- 할인 적용된 리스트 -->
			<div class="disTable">
				<table id="dateDiscount">
					<colgroup>
						<col style="">
						<col style="">
						<col style="">
						<col style="">
						<col style="width: 10%;">
					</colgroup>
					<tr>
						<th class="dateHead disHalf" colspan="2">기간</th>
						<th class="dateHead">할인</th>
						<th class="dateHead">가격</th>
					</tr>
					<tr>
						<td><input class="form-control disBtn" type="text" placeholder="시작일"></td>
						<td><input class="form-control disBtn disHalf" type="text" placeholder="종료일"></td>
						<td><input class="form-control disBtn" type="text" placeholder="할인율"></td>
						<td><input class="form-control disBtn" type="text" placeholder="% 또는 원"></td>
						<td>
							<button class="btn btn-default" type="button">+</button>
						</td>
					</tr>
					<tr>
						<td colspan="4"><input class="form-control" type="text" placeholder="할인 설명"></td>
					</tr>

				</table>
			</div>

			<!-- 할인 시작 -->
			<div class="addTop">
				<ol>
					<h3>이벤트 할인</h3>
				</ol>
			</div>

			<!-- 할인 적용된 리스트 -->
			<div class="disTable">
				<table id="dateDiscount2">
					<colgroup>
						<col style="">
						<col style="">
						<col style="">
						<col style="">
						<col style="width: 10%;">
					</colgroup>
					<tr>
						<th class="dateHead disHalf" colspan="2">기간</th>
						<th class="dateHead">할인</th>
						<th class="dateHead">가격</th>
					</tr>
					<tr>
						<td><input class="form-control disBtn" type="text" placeholder="시작일"></td>
						<td><input class="form-control disBtn disHalf" type="text" placeholder="종료일"></td>
						<td><input class="form-control disBtn" type="text" placeholder="할인율"></td>
						<td><input class="form-control disBtn" type="text" placeholder="% 또는 원"></td>
						<td>
							<button class="btn btn-default" type="button">+</button>
						</td>
					</tr>
					<tr>
						<td colspan="4"><input class="form-control" type="text" placeholder="할인 설명"></td>
					</tr>

				</table>
			</div>

			<div class="disTable">
				<table>
					<colgroup>
						<col style="width: 55%;">
						<col style="width: 15%;">
						<col style="width: 20%;">
						<col style="width: 10%;">
					</colgroup>
					<tr>
						<td>20년 01월 01일 ~ 20년 01월 2일</td>
						<td class="disFont">10%</td>
						<td>금메달 할인</td>
						<td>
							<button class="btn btn-outline-primary" type="button">삭제</button>
						</td>
					</tr>
				</table>
				<table>
					<colgroup>
						<col style="width: 55%;">
						<col style="width: 15%;">
						<col style="width: 20%;">
						<col style="width: 10%;">
					</colgroup>
					<tr>
						<td>20년 01월 01일 ~ 20년 01월 2일</td>
						<td class="disFont">20%</td>
						<td>주말 할인</td>
						<td>
							<button class="btn btn-outline-primary" type="button">삭제</button>
						</td>
					</tr>
				</table>
				<table>
					<colgroup>
						<col style="width: 55%;">
						<col style="width: 15%;">
						<col style="width: 20%;">
						<col style="width: 10%;">
					</colgroup>
					<tr>
						<td>20년 01월 01일 ~ 20년 01월 2일</td>
						<td class="disFont">10%</td>
						<td>명절 할인</td>
						<td>
							<button class="btn btn-outline-primary" type="button">삭제</button>
						</td>
					</tr>
				</table>
				<table>
					<colgroup>
						<col style="width: 55%;">
						<col style="width: 15%;">
						<col style="width: 20%;">
						<col style="width: 10%;">
					</colgroup>
					<tr>
						<td>20년 01월 01일 ~ 20년 01월 2일</td>
						<td class="disFont">5000원</td>
						<td>깜짝 할인</td>
						<td>
							<button class="btn btn-outline-primary" type="button">삭제</button>
						</td>
					</tr>
				</table>

			</div>

			<!-- 적용버튼 -->
			<div id="submitBtn">
				<button id="submitBtn2" " class="
                        btn=" btn"
                        btn-default" type="
                        button"="button"">적용</button>
			</div>

		</div>
		<!-- 창 끝 -->
		<div></div>

		<!-- Footer X -->
	</div>
	<!-- wrap 끝 -->

</body>

</html>