<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     ${1}
     <%= request.getParameter("id") %>
     ${param.id}
     <%= session.getAttribute("sessionId") %>
     ${ sessionScope.sessionId }
     ${ sessionId }
     
     ${1+2}
     ${1*2}
     ${3/2}
     <hr>
     <% out.println(1+2); %>
     <hr>
     <%= 1+2 %>
     

</body>
</html>