<%@page import="com.java.www.dto.Member"%>
<%@page import="com.java.www.dao.MemberDao"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
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
	
	    String id = request.getParameter("id");
	    String pw = request.getParameter("pw");
	    String name = request.getParameter("name");
	    String phone = request.getParameter("phone");
	    
	    //객체선언
	    MemberDao mdao = new MemberDao();
	    //회원정보저장메소드 호출 -  참조변수명.메소드명()
	    int result = mdao.insertMember(new Member(id,pw,name,phone));
	    
	%>
	
	<script>
	   if(<%=result%>==1){
		   alert("회원정보가 저장되었습니다.!");
		   location.href="j0619_main.jsp";
	   }else{
		   alert("데이터가 올바르지 않습니다. 다시 입력해주세요.");
		   history.back();
	   }
	</script>
	
	</body>
</html>