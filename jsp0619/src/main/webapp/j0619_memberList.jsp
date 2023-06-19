<%@page import="com.java.www.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.java.www.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보 리스트</title>
	</head>
	<body>
	  <h2>회원정보리스트</h2>
	  <%
	    MemberDao mdao = new MemberDao();
	    ArrayList<Member> list = mdao.selectMember();
	    
	    for(int i=0;i<list.size();i++){
	    	Member m = list.get(i);
	    	m.getId();
	    	m.getPw();
	    	m.getName();
	    	m.getPhone();
	    	
	    }
	  %>
	</body>
</html>