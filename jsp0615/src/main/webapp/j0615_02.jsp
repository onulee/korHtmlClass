<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		  * {padding:0; margin:0;}
		  table{width:550px; margin:30px auto; text-align: center; }
		  table,td{border:1px solid black; border-collapse: collapse;}
		  td{height:35px; width:100px; }
		</style>
	</head>
	<body>
	  <!-- html주석 -->
	  <table>
	  <%
	    for(int i=2;i<=9;i++){
	    	for(int j=1;j<=9;j++){
	  %>
	    <tr>
	      <td><%= i %></td>
	      <td>*</td>
	      <td><%= j %></td>
	      <td>=</td>
	      <td><%= (i*j) %></td>
	    </tr>
	  <%   }
	    }
	  %>  
	  </table>
	  
	  
	  
	  
	  <%-- jsp주석 
	    <%
	    for(int i=2;i<=9;i++){
	    	for(int j=1;j<=9;j++){
	  %>
	    <tr>
	      <td><% out.println(i); %></td>
	      <td>*</td>
	      <td><% out.println(j); %></td>
	      <td>=</td>
	      <td><% out.println(i*j); %></td>
	    </tr>
	  <%   }
	    }
	  %>  
	    
	    
	    
	    
	    out.println("<table>");
	    for(int i=2;i<=9;i++){
	    	for(int j=1;j<=9;j++){
	    		//out.println(i + "*" + j + "="+ (i*j)+"<br>");
	    		out.println("<tr>");
	    		out.println("<td>"+i+"</td>");
	    		out.println("<td>*</td>");
	    		out.println("<td>"+j+"</td>");
	    		out.println("<td>=</td>");
	    		out.println("<td>"+(i*j)+"</td>");
	    		out.println("</tr>");
	    	}
	    }
	    out.println("</table>");
	    
	    
	  <table>
	    <tr>
	      <td>2</td>
	      <td>*</td>
	      <td>1</td>
	      <td>=</td>
	      <td>2</td>
	    </tr>
	    <tr>
	      <td>2</td>
	      <td>*</td>
	      <td>2</td>
	      <td>=</td>
	      <td>4</td>
	    </tr>
	  </table>
	  <%
	    for(int i=0;i<100;i++){
	    	out.println(i);
	    }
	  %> 
	  --%>
	  
	  
	
	</body>
</html>