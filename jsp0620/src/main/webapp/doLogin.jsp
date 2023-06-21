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
	     String userId = request.getParameter("id");
	     String userPw = request.getParameter("pw");
	     MemberDao mdao = new MemberDao();
	     Member member = mdao.selectLogin(userId, userPw);
	     
	     if(member!=null){
	    	 session.setAttribute("sessionId", member.getId());
	    	 session.setAttribute("sessionName", member.getName());
	   %> 	 
	    	<script>alert("로그인 되었습니다."); location.href="main.jsp";</script>
	    <%}else{%>	 
	    	<script>
	    	  alert("아이디 또는 패스워드가 일치하지 않습니다. 다시 입력하세요.");
	    	  history.back();
	    	</script>
	    <%}%>
	
	</body>
</html>