<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	   <!-- 아이디를 쿠키에 저장하기 cid, cpw -->
	   <%
	      String id = request.getParameter("id");
	      String pw = request.getParameter("pw");
	      
	      if(!(id.equals("admin") && pw.equals("1234"))){
	    	  response.sendRedirect("login_cookie.jsp?idCheck=0");
	      }
	      //쿠키저장
	      Cookie cid = new Cookie("cid",id);
		  cid.setMaxAge(60*60); //60초*60분
		  response.addCookie(cid);
		    
		  Cookie cpw = new Cookie("cpw",pw);
		  cpw.setMaxAge(60*60); //60초*60분
		  response.addCookie(cpw);
	      
	      
	      out.println("id : "+id+"<br>");
	      out.println("pw : "+pw+"<br>");
	      
	   %>
	   <a href="login_confirm.jsp">쿠키확인</a>
	</body>
</html>