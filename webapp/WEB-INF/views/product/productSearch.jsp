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

<link href="${pageContext.request.contextPath}/assets/css/main/search.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/indcom.css" rel="stylesheet">

</head>


<body>
	<div id="wrap">
		<!-- 헤더 header 구역 시작 (로그인 로고 검색창) -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 구역 종료 -->


		<!-- 컨텐츠 구역 시작 -->
		<div id="bc" class="container-fluid contentsOut">
			<div class="container zp">
				
				<div id="containerMain">
					<div></div>
					<div id="search">
						<div id="searchText"> 
							<p><span>'${result.key}'</span>에 대한 검색 결과는 총 <span>${result.count}</span>건입니다.<p>
						</div>
						<div id="searchResult">
							<c:forEach items="${result.vo}" var="vo">
								<table>
								<colgroup>
									<col style="width:14%">
									<col style="width:66%">
									<col style="">
								</colgroup>
									<tr>
										<td id="tdImg" rowspan="2"><a href="${pageContext.request.contextPath}/product/info?prodNo=${vo.prodNo}"><img src="${pageContext.request.contextPath}/upload/${vo.posterPath}"></a></td>
										<th colspan="2">${vo.prodName}</th>
									</tr>
									<tr>
										<td>
										<c:choose>
											<c:when test="${vo.prodType eq 1}">뮤지컬</c:when>
											<c:when test="${vo.prodType eq 2}">연극</c:when>
											<c:when test="${vo.prodType eq 3}">콘서트</c:when>
											<c:when test="${vo.prodType eq 4}">스포츠</c:when>
											<c:otherwise>전시</c:otherwise>
										</c:choose>
										 | ${vo.viewTime}분 | 
										 <c:choose>
											<c:when test="${vo.viewGrade eq 1}">전체 관람가능</c:when>
											<c:when test="${vo.viewGrade eq 2}">8세이상 관람가능</c:when>
											<c:when test="${vo.viewGrade eq 3}">12세이상 관람가능</c:when>
											<c:when test="${vo.viewGrade eq 4}">15세이상 관람가능</c:when>
											<c:otherwise>18세이상 관람가능</c:otherwise>
										</c:choose>
										</td>
										<td><br><br>${vo.theaterName} ${vo.hallName}<br>${vo.beginShow} ~ ${vo.endShow}</td>
									</tr>
								</table>	
							</c:forEach>
						</div>
						
					</div>
					<div></div>
				</div>
				
				<!-- 페이징 -->
				<div class="row paging">				
					<nav>
					  <ul class="pagination">
					  	<li><a href="javascript:PageMove(${result.paging.firstPageNo})"><span class="glyphicon glyphicon-triangle-left"></span></a></li>
						<li class= ${result.paging.pageNo eq result.paging.firstPageNo ? "disabled" : ""}><a href="javascript:PageMove(${result.paging.prevPageNo})"><span class="glyphicon glyphicon-menu-left"></span></a></li>
			
						<c:forEach var="i" begin="${result.paging.startPageNo}" end="${result.paging.endPageNo}" step="1">
							<c:choose>
								<c:when test="${i eq result.paging.pageNo}">
									<li class= ${result.paging.pageNo eq i ? "active" : ""}><a href="javascript:PageMove(${i})">${i}</a></li>
								</c:when>
								<c:otherwise>
									<li class= ${result.paging.pageNo eq i ? "active" : ""}><a href="javascript:PageMove(${i})">${i}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						
					    <li class= ${result.paging.pageNo eq result.paging.finalPageNo ? "disabled" : ""}><a href="javascript:PageMove(${result.paging.nextPageNo})"><span class="glyphicon glyphicon-menu-right"></span></a></li>
					    <li><a href="javascript:PageMove(${result.paging.finalPageNo})"><span class="glyphicon glyphicon-triangle-right"></span></a></li>
					  </ul>
					</nav>
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


<script>

	function PageMove(page) {

		location.href = "${pageContext.request.contextPath}/product/search?keyword=${result.key}&crtPage=" + page;	
	}

</script>

</html>
