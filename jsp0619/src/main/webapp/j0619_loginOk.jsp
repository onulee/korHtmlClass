<%@page import="com.java.www.dto.Member"%>
<%@page import="com.java.www.dao.MemberDao"%>
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
		request.setCharacterEncoding("utf-8");
	    String userId = request.getParameter("id");
	    String userPw = request.getParameter("pw");
	    
	    MemberDao mdao = new MemberDao();
	    Member mem = mdao.selectLogin(userId, userPw);
	    if(mem!=null){
	    	session.setAttribute("sessionId", mem.getId());
	    	session.setAttribute("sessionName", mem.getName());
	%>
	    <script>
	       alert("로그인이 되었습니다.");
	       location.href="j0619_main.jsp";
	    </script>
	<%}else{%>
	    <script>
	       alert("아이디 또는 패스워드가 일치 하지 않습니다.");
	       history.back();
	    </script>
	<%}%>
	
	</body>
</html>