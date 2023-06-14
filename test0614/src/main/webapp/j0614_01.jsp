<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		  table,th,td{border:1px solid black; border-collapse: collapse;
		  text-align: center;}
		  td{width:120px; height:30px;}
		</style>
	</head>
	<body>
	  <table>
	  <tr>
	    <th>i</th>
	    <th>sum</th>
	  </tr>
	  <%
	    int sum=0; //1부터 100까지의 합을 구하시오.
	    for(int i=1;i<=100;i++){
	    	sum += i;
	  %>  	
	    	<tr>
		      <td><%out.println(i);   %></td>
		      <td><%out.println(sum); %></td>
		    </tr>
	    	
	    <%	
	    }
	  %>
	  </table>
	
	</body>
</html>