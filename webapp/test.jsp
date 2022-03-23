<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html> 

<head>
	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
	<script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
	 <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>
<body> 
			
	<div class="modal fade" id="myModal">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-body">
			<div class="g-recaptcha" data-sitekey="6LfrjgMfAAAAAAAOMc65PrUGhUnBvpJEL_CLGy_i" data-callback="modalClose"></div>
	      </div>
	    </div>
	  </div>
	</div>
 
</body>

<script>
"use strict";

$(function() {
	
});

	
</script>

</html>