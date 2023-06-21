<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>뷰페이지</title>
	</head>
	<body>
	  <h2>dispatcher페이지</h2>
	  
	  <h3><%= request.getAttribute("id")  %></h3>
	  <h3><%= request.getAttribute("pw")  %></h3>
	  <hr>
	  <h3>${id }</h3>
	  <h3>${requestScope.id }</h3>
	  
	   
	
	</body>
</html>