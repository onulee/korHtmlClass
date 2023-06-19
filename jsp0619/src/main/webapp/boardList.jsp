<%@page import="java.util.Date"%>
<%@page import="com.java.www.Board"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.java.www.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		  h2{width:1000px; text-align: center;}
		  table,th,td{border:1px solid black; border-collapse: collapse; text-align: center;}
		  table{width:1000px; margin:30px auto;}
		  th,td{width:200px; height:30px; }
		</style>
	</head>
	<body>
	  <h2>게시판리스트</h2>
	  <table>
	    <colgroup>
	      <col width="15%">
	      <col width="40%">
	      <col width="15%">
	      <col width="15%">
	      <col width="15%">
	    </colgroup>
	    <tr>
	      <th>번호</th>
	      <th>제목</th>
	      <th>작성자</th>
	      <th>작성일</th>
	      <th>조회수</th>
	    </tr>
	    <%
	      int bno;
	      String btitle;
	      String id;
	      Date bdate;
	      int bhit;
	      BoardDao bdao = new BoardDao();
	      ArrayList<Board> list = bdao.selectBoard();
	      
	      for(int i=0;i<list.size();i++){
	    	  Board b = list.get(i);
	    	  bno = b.getBno();
	    	  btitle = b.getBtitle();
	    	  bdate = b.getBdate();
	    	  bhit = b.getBhit();
        %>
		    <tr>
		      <td>1</td>
		      <td>게시글 등록</td>
		      <td>홍길동</td>
		      <td>2023-06-19</td>
		      <td>100</td>
		    </tr>
	    <%}%>
	    
	  
	  </table>
	  
	  
	
	</body>
</html>