<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>파일 업로드</title>
	</head>
	<body>
	  <h2>파일업로드</h2>
	  <form action="upload.jsp" method="post" name="frm" enctype="multipart/form-data">
	    <label>제목</label>
	    <input type="text" name="title" ><br>
	    <label>파일업로드</label>
	    <input type="file" name="bfile"><br>
	    <input type="submit" value="전송"><br>
	    
	  </form>
	
	</body>
</html>