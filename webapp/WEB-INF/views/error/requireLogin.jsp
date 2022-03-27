<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">


</head>
<body>

</body>

<script type="text/javascript">
	alert('로그인 후 이용해주세요');
	close();
	opener.location.href = '${pageContext.request.contextPath}/user/loginForm?prodNo=${prodNo}&viewDate=${viewDate}';
</script>
</html>