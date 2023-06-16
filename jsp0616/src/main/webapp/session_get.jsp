<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		  table{width:400px; margin: 0 auto; text-align: center;}
		  table,td{border:1px solid black; border-collapse: collapse;}
		  td{width:200px; height:40px; }
		</style>
	</head>
	<body>
		<%
		//session.setAttribute("sessionId", "admin");
	    //session.setAttribute("sessionNicName", "길동스");
	    //session.setAttribute("sessionName", "홍길동");
	    
	    String sessionId =(String)session.getAttribute("sessionId");
	    String sessionNicName =(String)session.getAttribute("sessionNicName");
	    String sessionName =(String)session.getAttribute("sessionName");
		%>
		<!-- 표로 출력하시오. -->
		<table>
		  <tr>
		    <td>sessionId</td>
		    <td><%= sessionId %></td>
		  </tr>
		  <tr>
		    <td>sessionNicName</td>
		    <td><%= sessionNicName %></td>
		  </tr>
		  <tr>
		    <td>sessionName</td>
		    <td><%= sessionName %></td>
		  </tr>
		</table>
		
		<%
		    session.removeAttribute("sessionId");
		    session.removeAttribute("sessionNicName");
		%>
		
		<a href="session_confirm.jsp">섹션 재확인</a>
		
		
	
	</body>
</html>