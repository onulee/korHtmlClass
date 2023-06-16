<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	  <h2>모든 쿠키 리스트</h2>
	  <%
	    Cookie[] cookies = request.getCookies(); //모든 쿠키를 읽어옴.
	    for(int i=0;i<cookies.length;i++){
	    	String str = cookies[i].getName();
	    	out.println(str+"<br>");
	    	if(str.equals("cookieId")){
	    		out.println("cookieId가 존재합니다. cookieId : "+cookies[i].getValue());
	    		cookies[i].setMaxAge(0); //쿠키삭제
	    		response.addCookie(cookies[i]); //쿠키삭제저장
	    	}
	    }
	  %>
	  <h2>
	    <a href="cookie_test.jsp">쿠키 다시확인</a>
	  </h2>
	  
	  
	  
	
	</body>
</html>