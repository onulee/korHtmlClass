<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>확인</title>
	</head>
	<body>
	   <%
	      String sbirth = request.getParameter("birth");
	      int confirm = 2023-Integer.parseInt(sbirth);
	   if(confirm>=18){
	   %>
	     <script>alert("주류판매 가능!!");
	             location.href="https://hitejinro.com/index.asp";
	     </script>
	   <%	   
		   out.println(confirm+" 세입니다. 판매가능!!<br>");
		   //response.sendRedirect("https://hitejinro.com/index.asp");
	   }else{
	   %>
	     <script>alert("담배판매 불가!!");</script>
	   <% 	   
		   out.println(confirm+" 세입니다. 판매불가!!<br>");
		   //response.sendRedirect("https://www.nosmokeguide.go.kr/index.do");
	   }
	   %>
	
	</body>
</html>