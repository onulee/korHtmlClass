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
	    int sum=0;
	    for(int i=0;i<10;i++){
	    	//out.println("<h2>"+i+"</h2><br>");
	    	sum += i;
	    	//out.println(sum+"<br>");
	  %>  
	  <%-- for문 중간을 분리 --%>
	  	   <h2><%= i %></h2>
	  	       <%= sum %><br>
	      
	  <%
	    }
	  %>
	
	</body>
</html>