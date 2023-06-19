<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
   Connection conn;
   PreparedStatement pstmt;
   //Statement stmt;
   ResultSet rs;
   String id,pw,name,phone;
   String query;
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	  <%
	     try{
	    	 Class.forName("oracle.jdbc.driver.OracleDriver");
	    	 conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "scott", "tiger");
	    	 String userId = "aaa";
	    	 String userPw = "1111";
	    	 query = " select * from member where id=? and pw=?"; 
	    	 pstmt = conn.prepareStatement(query);
	    	 pstmt.setString(1, userId);
	    	 pstmt.setString(2, userPw);
	    	 
	    	 rs = pstmt.executeQuery();
	    	 
	    	 while(rs.next()){ //5명
	    		 id = rs.getString("id");
	    		 pw = rs.getString("pw");
	    		 name = rs.getString("name");
	    		 phone = rs.getString("phone");
	    		 
	    		 out.println("아이디: "+id+",패스워드 : "+pw+", 이름 : "+name+",전화번호 : "+phone+"<br>");
	    	 }//while
	     }catch(Exception e){
	    	 e.printStackTrace();
	     }finally{
	    	 try{
	    		 if(rs!=null) rs.close();
	    		 if(pstmt!=null) pstmt.close();
	    		 if(conn!=null) conn.close();
	    	 }catch(Exception e2){e2.printStackTrace();}
	     }
	  %>
	
	</body>
</html>