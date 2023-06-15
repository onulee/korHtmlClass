<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		  *{margin:0; padding:0;}
		  #main{width:100%; height:400px; background: pink; }
		  #top{width:100%; height:80px; border:1px solid black;  }
		  nav{width:80%; height:78px; border:1px solid black; margin:0 auto; background: green;}
		  #footer{width:100%; height:80px; border:1px solid black;  }
		  footer{width:80%; height:78px; border:1px solid black; margin:0 auto; background: yellow;}
		</style>
	</head>
	<body>
	  <%@include file="top.jsp" %>
	  <div id="main"></div>
	  <%@include file="footer.jsp" %>
	
	
	</body>
</html>