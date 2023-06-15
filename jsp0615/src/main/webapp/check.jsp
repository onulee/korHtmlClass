<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	  <%
	    String id = request.getParameter("id");
	    if(id.equals("aaa")){
	    	//response.sendRedirect("j0615_08.jsp");
	    }else{
	    	response.sendRedirect("join03_success.jsp?id="+id+"&name="+"홍길동");
	    }
	  %>
	
	</body>
</html>







