<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava Standard layout include</title>

<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/assets/css/main/search.css" rel="stylesheet">


</head>

<style>
/* div 그리드 출력 (레이아웃 이해를 돕기 위한 코드) */
div {
	border: 0px solid black;
}
</style>

<body>
	<div id="wrap">
		<!-- 헤더 header 구역 시작 (로그인 로고 검색창) -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 구역 종료 -->


		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid contentsOut">
			<div class="container zp">
				
				<div id="containerMain">
					<div></div>
					<div id="search">
						<div id="searchText"> 
							<p><span>라이온 킹</span>에 대한 검색 결과는 총 <span>3</span>건입니다.<p>
						</div>
						<div id="searchResult">
							<table>
								<colgroup>
									<col style="width:14%">
									<col style="width:66%">
									<col style="">
								</colgroup>
								<tr>
									<td id="tdImg" rowspan="2"><img src="${pageContext.request.contextPath}/assets/image/seatType/r.jpg"></td>
									<th colspan="2">뮤지컬 라이온 킹 인터네셔널 투어 (Musical The Lion King)</th>
								</tr>
								<tr>
									<td>뮤지컬 | 150분 | 8세이상 관람가능</td>
									<td>서울<br>예술의전당 오페라극장<br>2022.01.01~2022.02.28</td>
								</tr>
							</table>
							
							<table>
								<colgroup>
									<col style="width:14%">
									<col style="width:66%">
									<col style="">
								</colgroup>
								<tr>
									<td id="tdImg" rowspan="2"><img src="${pageContext.request.contextPath}/assets/image/seatType/vip.jpg"></td>
									<th colspan="2">뮤지컬 라이온 킹 인터네셔널 투어 (Musical The Lion King)</th>
								</tr>
								<tr>
									<td>뮤지컬 | 150분 | 8세이상 관람가능</td>
									<td>서울<br>예술의전당 오페라극장<br>2022.01.01~2022.02.28</td>
								</tr>
							</table>
							<table>
								<colgroup>
									<col style="width:14%">
									<col style="width:66%">
									<col style="">
								</colgroup>
								<tr>
									<td id="tdImg" rowspan="2"><img src="${pageContext.request.contextPath}/assets/image/seatType/chosen.jpg"></td>
									<th colspan="2">뮤지컬 라이온 킹 인터네셔널 투어 (Musical The Lion King)</th>
								</tr>
								<tr>
									<td>뮤지컬 | 150분 | 8세이상 관람가능</td>
									<td>서울<br>예술의전당 오페라극장<br>2022.01.01~2022.02.28</td>
								</tr>
							</table>
						</div>
						
					</div>
					<div></div>
				</div>
				
				
			</div>
			<!-- container 종료 -->
		</div>
		<!-- 컨텐츠 구역 종료 -->


		<!-- 푸터 구역 시작 -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

	</div>
	<!-- wrap 종료 -->

</body>
</html>
