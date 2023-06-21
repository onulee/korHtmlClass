<%@page import="com.java.www.dao.BoardDao"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
	<head>
	    <% if(session.getAttribute("sessionId")==null){ %>
	       <script>alert("로그인을 하셔야 글쓰기가 가능합니다."); location.href="login.jsp";</script>
	    <%} %>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	  <%
	    String uploadPath = "c:/upload";
	    int size = 10*1024*1024; //10MB
	    MultipartRequest multi = 
	    new MultipartRequest(request,uploadPath,size,"utf-8",new DefaultFileRenamePolicy());
	    
	    String userId = (String) session.getAttribute("sessionId");
	    String userBtitle = multi.getParameter("btitle");
	    String userBcontent = multi.getParameter("bcontent");
	    String userBfile = multi.getFilesystemName("bfile");
	  
	    BoardDao bdao = new BoardDao();
	    int result = bdao.insertOne(userId, userBtitle, userBcontent, userBfile);
	  
	  %>
	  <script>alert("게시글이 등록되었습니다."); location.href="notice_list.jsp";</script>
	
	
	
	
	
	
	
	
	</body>
</html>