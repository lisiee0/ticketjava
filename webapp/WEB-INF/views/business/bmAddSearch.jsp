<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
<meta charset="UTF-8">
<title>TicketJava layout 표준 그리드</title>

<!-- 부트스트랩 (원준이 커스텀 컬러 #6697f2 primary) -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">

<!-- 개인 css -->

<link href="${pageContext.request.contextPath}/assets/css/bmNewTab.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/bmAddSearch.css" rel="stylesheet">

</head>

<body>
	<div id="wrapMain">
		<div></div>
		<!-- 창 -->
		<div id="result">
			<div id="searchBox">
				<input class="form-control" type="text" value="세종문화회관">
			</div>

			<div id="searchText">
				<p>
					<span>'세종문화회관'</span> 에 대한 검색 결과입니다.
				<p>
			</div>

			<div id="searchResult">

				<table>
					<colgroup>
						<col style="width: 83%">
						<col style="width: 17%">
					</colgroup>

					<tr>
						<th id="tdwhere">세종문화회관 1관</th>
						<td>
							<button class="btn-primary">선택</button>
						</td>
					</tr>

				</table>
				<table>
					<colgroup>
						<col style="width: 83%">
						<col style="width: 17%">
					</colgroup>

					<tr>
						<th id="tdwhere">세종문화회관 2관</th>
						<td>
							<button class="btn-primary">선택</button>
						</td>
					</tr>

				</table>
				<table>
					<colgroup>
						<col style="width: 83%">
						<col style="width: 17%">
					</colgroup>

					<tr>
						<th id="tdwhere">세종문화회관 3관</th>
						<td>
							<button class="btn-primary">선택</button>
						</td>
					</tr>

				</table>
				<table>
					<colgroup>
						<col style="width: 83%">
						<col style="width: 17%">
					</colgroup>

					<tr>
						<th colspan="2"></th>
					</tr>

				</table>

			</div>

		</div>
		<!-- 창 끝 -->
		<div></div>

		<!-- Footer X -->
	</div>
	<!-- wrap 끝 -->

</body>

</html>