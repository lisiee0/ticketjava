<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Draggable - Auto-scroll</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  #draggable, #draggable2, #draggable3 { width: 400px; height: 400px; padding: 0.5em; float: left; margin: 0 10px 10px 0;  background-color:red;}
  
  #iddd{
  	width: 200px; 
  	height: 200px; 
	overflow-x: hidden;
	overflow-y:hidden;
  }
  </style>
  
  
<body>

	<div id="iddd">
		<div id="draggable" class="ui-widget-content">
		  <p>Scroll set to true, default settings</p>
		</div>
	</div>
 
 
</body>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#draggable" ).draggable({ scroll: true });
  } );
  </script>
</head>
<body>
</html>