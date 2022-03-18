<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>

<script type="text/javascript">
	alert('로그인 후 이용해주세요');
	close();
	opener.location.href = '${pageContext.request.contextPath}/user/loginForm?prodNo=${prodNo}';
</script>
</html>