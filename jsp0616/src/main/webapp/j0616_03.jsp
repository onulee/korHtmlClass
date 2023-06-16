<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Cookie</title>
	</head>
	<body>
	  <%
	    Cookie cookieCheckbox = new Cookie("cookieCheckbox","1");
	    cookieCheckbox.setMaxAge(60*60); //60초*60분
	    response.addCookie(cookieCheckbox);
	    
	    Cookie cookieId = new Cookie("cookieId","admin");
	    cookieId.setMaxAge(60*60); //60초*60분
	    response.addCookie(cookieId);
	  %>
	  <h2>
	    <a href="cookie_get.jsp">쿠키 읽어오기</a>
	  </h2>
	
	</body>
</html>