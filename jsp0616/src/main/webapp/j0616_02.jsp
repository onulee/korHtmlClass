<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>forward</title>
	</head>
	<body>
	  <h2>1번째 페이지 입니다.</h2>
	  <script>location.href="top.jsp";</script>
	 <%--  <% response.sendRedirect("top.jsp"); %> --%>
	  <%-- <jsp:forward page="top.jsp" /> --%>
	
	</body>
</html>