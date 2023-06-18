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
	      String pw = request.getParameter("pw");
	      
	      if(id.equals("aaa") && pw.equals("1111")){  //db검색
	    	  session.setAttribute("sessionId", "aaa");
	    	  session.setAttribute("sessionName", "홍길동");
	    	  session.setAttribute("sessionNicName", "길동스");
	    	  response.sendRedirect("main.jsp");
	      }else{
	    	  response.sendRedirect("login.jsp?logCheck=0");
	      }
	  %>
	
	</body>
</html>