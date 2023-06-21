<%@page import="com.java.www.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.java.www.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<% if(session.getAttribute("sessionId")==null){ %>  
	<script>
	  alert("로그인을 하셔야 접근이 가능합니다.");
	  location.href="j0619_login.jsp";
	</script>
<%}%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보 리스트</title>
		<style>
		  * {padding:0; margin:0;}
		  h2{width:550px; margin:0 auto; text-align: center;}
		  table{width:550px; margin:30px auto; text-align: center; }
		  table,td{border:1px solid black; border-collapse: collapse;}
		  td{height:35px; width:100px; }
		</style>
	</head>
	<body>
	  <h2>회원정보리스트</h2>
	  <table>
	  <%
	    String id,pw,name,phone;
	    MemberDao mdao = new MemberDao();
	    ArrayList<Member> list = mdao.selectMember();
	    
	    for(int i=0;i<list.size();i++){
	    	Member m = list.get(i);
	    	id = m.getId();
	    	pw = m.getPw();
	    	name = m.getName();
	    	phone = m.getPhone();
	  %>
	    <tr>
	      <td><%= id %></td>
	      <td><%= pw %></td>
	      <td><%= name %></td>
	      <td><%= phone %></td>
	    </tr>
	  <%}%>
	  </table>
	</body>
</html>