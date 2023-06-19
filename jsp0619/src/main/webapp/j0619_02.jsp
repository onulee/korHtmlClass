<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Context context = null;
    DataSource dataSource = null;
    Connection conn = null;
	PreparedStatement pstmt;
	ResultSet rs;
	//컬럼타입
	int empno;
	String ename;
	String job;
	int mgr;
	String hiredate;
	double sal;
	double comm;
	int deptno;
	
	String query;

%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>employee List</title>
		<style>
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		</style>
	</head>
	<body>
	   <h2>직원 리스트</h2>
	   <table>
	     <tr>
	       <th>직원번호</th>
	       <th>이름</th>
	       <th>직급</th>
	       <th>관리자</th>
	       <th>입사일</th>
	       <th>월급</th>
	       <th>인센티브</th>
	       <th>부서번호</th>
	     </tr>
	   <%
	     try{
	    	 context = new InitialContext();
	    	 dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
	    	 conn = dataSource.getConnection();
	    	 query = " select * from emp order by empno desc"; 
	    	 pstmt = conn.prepareStatement(query);
	    	 
	    	 rs = pstmt.executeQuery();
	    	 
	    	 while(rs.next()){ //5명
	    		     		 
	    		 empno = rs.getInt("empno");
	    		 ename = rs.getString("ename");
	    		 job = rs.getString("job");
	    		 mgr = rs.getInt("mgr");
	    		 hiredate = rs.getString("hiredate");
	    		 sal = rs.getDouble("sal");
	    		 comm = rs.getDouble("comm");
	    		 deptno = rs.getInt("deptno");
	    		 
	    		 //out.println("empno : "+empno+","+ename+job+mgr+hiredate+sal+"<br>");
	    		%> 
	    		<!-- html태그 -->
	    		
	    		<tr>
	    		  <td><%=empno %></td>
	    		  <td><%=ename %></td>
	    		  <td><%=job %></td>
	    		  <td><%=mgr%></td>
	    		  <td><%=hiredate %></td>
	    		  <td><%=sal %></td>
	    		  <td><%=comm %></td>
	    		  <td><%=deptno %></td>
	    		</tr>
	    		 
	    	   <% 
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
	   </table>
	</body>
</html>