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
<link href="${pageContext.request.contextPath}/assets/css/bm/bmAddSearch.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>


</head>

<body>
	<div id="wrapMain">
		<div></div>
		<!-- 창 -->
		<div id="result">
			<div id="searchBox">
				<table>
					<colgroup>
						<col style="width: 85%">
						<col style="width: 15%">
					</colgroup>
					<tr>
						<th><input class="form-control" id="searchArea" type="text" name="keyword"></th>
						<td><button type="button" id="searchBtn">검색버튼</button></td>
					</tr>
				</table>
			</div>

			<div id="searchText">
				<p>
					<span>"${result.hkey}"</span> 에 대한 검색 결과입니다.
				<p>
			</div>

			<div id="searchResult">
				<c:forEach items="${bmAddSearch}" var="vo" varStatus="vS">
					<table>
						<colgroup>
							<col style="width: 23%">
							<col style="">
							<col style="">
							<col style="width: 10%">
						</colgroup>
						<tr>
							<th class="theaterN" id="cInput">${vo.theaterName}</th>
							<td class="theaterH">${vo.hallName}</td>
							<td id="theaterA">${vo.address}</td>
							<td>
								<button type="submit" class="btn-primary" onclick="window.close()">선택</button>
							</td>
						</tr>
					</table>
				</c:forEach>

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
ㅌ`
		<!-- Footer X -->
	</div>
	<!-- wrap 끝 -->

</body>
<script type="text/javascript">
	//부모창에서 id가 pInput인 태그의 val()
	//자식창에서 id가 cInput인 val에 id를 넣기
/* 	var id = opener.$("#pInput").val();
	$("#cInput").val(id);
 */
	var inputLog =  $("#pInput", opener.document).val($("#cInput").val());
 	console.log(inputLog)
</script>

</html>