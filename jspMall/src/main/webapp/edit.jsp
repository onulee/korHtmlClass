<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>글수정</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/write.css">
  <style>img {width:400px; }</style>
</head>
<body>
<section>
    <h1>게시글수정</h1>
    <hr>

    <form action="doEdit.do" name="modify" method="post" enctype="multipart/form-data">
      <table>
      <input type="hidden" name="bno" value="${board.bno}">
      <input type="hidden" name="oldfile" value="${board.bfile}">
        <colgroup>
          <col width="15%">
          <col width="85%">
        </colgroup>
        <tr>
          <th>작성자</th>
          <td>
            <input type="text" name="id" value="${board.id}" readonly>
          </td>
        </tr>
        <tr>
          <th>제목</th>
          <td>
            <input type="text" name="btitle" value="${board.btitle}">
          </td>
        </tr>
        <tr>
          <th>내용</th>
          <td>
            <textarea name="bcontent" cols="50" rows="10">${board.bcontent}</textarea>
          </td>
        </tr>
        <tr>
          <th>이미지 표시</th>
          <td>
            <input type="file" name="bfile" id="file">
          </td>
        </tr>
        <tr>
          <th>이미지 표시</th>
          <td>
            <img src="upload/${board.bfile}">
          </td>
        </tr>
      </table>
      <hr>
      <div class="button-wrapper">
        <button type="submit" class="write">수정완료</button>
        <button type="button" class="cancel" onclick="javascript:location.href='list.do'">취소</button>
      </div>
    </form>

  </section>

</body>
</html>