<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<c:import url="/assets/js/reservation/confirmContinueJs.jsp"></c:import>
</head>
<body>

	<form id="historyForm" action="" method="post">
		<input id="rezNo" type="hidden" name="rezNo" value="${param.rezNo}">
		<input type="hidden" name="prodNo" value="${param.prodNo}">
		<input type="hidden" name="viewDate" value="${param.viewDate}">
	</form>


</body>
</html>

