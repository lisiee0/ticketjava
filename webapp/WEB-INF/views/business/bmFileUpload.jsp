<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form id="frm" name="frm" method="post" action="/register/action" enctype="multipart/form-data">
		<input type="file" name="file1" /> 
		<input type="file" name="file2" /> 
		<input type="file" name="file3" />
		<Button type="submit">전송</Button>
	</form>

</body>
</html>