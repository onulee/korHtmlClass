<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	   <c:set var="varName" value="홍길" />
	   <% String name="이순신"; %>
	   <h3>이름 : <c:out value="${varName}" /> </h3>
	   <h3>이름 : ${varName } </h3>
	   <h3>스크립트릿 이름 : ${name} </h3>
	   
	   <hr>
	   <c:if test="${varName =='홍길동' }">
	      <h2>정답입니다. 홍길동</h2>
	   </c:if>
	   <c:if test="${varName !='홍길동' }">
	      <h2>오답입니다. ${varName } 입니다.</h2>
	   </c:if>
	   
	   <hr>
	   <%if(name.equals("홍길동")){%>
	    	<h2>정답입니다. 홍길동</h2> 
	   <%}else{%>
	    	 <h2>오답입니다. <%=name %> 입니다.</h2>
	   <%}%>
	   
	   <hr>
	   <c:forEach var="i" begin="1" end="10" step="1">
	      ${i}<br>
	   </c:forEach>
	   <hr>
	   <h3>board객체</h3>
	   <h3>${board.bno}</h3>
	   <h3>${board.id}</h3>
	   <h3>${board.btitle}</h3>
	   
	   <hr>
	   <c:forEach var="b" items="${list}">
	      <h3>${b.bno }</h3>
	      <h3>${b.id }</h3>
	      <h3>${b.btitle }</h3>
	      <br>
	   </c:forEach>
	  
	   
	   
	   
	   
	   
	   
	
	</body>
</html>