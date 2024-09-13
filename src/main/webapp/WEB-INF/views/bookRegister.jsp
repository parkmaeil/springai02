<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	  <h2>Spring MVC 01</h2>
	  <div class="panel panel-default">
	    <div class="panel-heading">책 등록하기</div>
	    <div class="panel-body">
	       <!-- 책 등록 폼 -->
           <form action="${cpath}/bookRegister" method="post">
             <div class="form-group">
               <label for="title">제목:</label>
               <input type="text" class="form-control" placeholder="Enter title" name="title" id="title">
             </div>
             <div class="form-group">
               <label for="price">가격:</label>
               <input type="number" class="form-control" placeholder="Enter price" name="price" id="price">
             </div>
              <div class="form-group">
                <label for="author">저자:</label>
                <input type="text" class="form-control" placeholder="Enter author" name="author" id="author">
              </div>
              <div class="form-group">
                <label for="page">페이지:</label>
                <input type="number" class="form-control" placeholder="Enter page" name="page" id="page">
              </div>
             <button type="submit" class="btn btn-primary btn-sm">등록</button>
             <button type="reset" class="btn btn-danger btn-sm">취소</button>
           </form>
	    </div>
	    <div class="panel-footer">웹기반 인공지능 Track2 (B) - 박매일</div>
	  </div>
	</div>
</body>
</html>