<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="${cpath}/resources/js/list.js"></script>
  <script>
      bookListFn(); // 함수
  </script>
</head>
<body>

<div class="container mt-4">
  <h2>Restful Service(SOA), Rest API</h2>
  <div class="card">
    <div class="card-header">Book List</div>
    <div class="card-body">
      <table class="table table-bordered">
          <thead>
              <tr>
                 <th>번호</th>
                 <th>제목</th>
                 <th>가격</th>
                 <th>저자</th>
                 <th>페이지</th>
                 <th>삭제</th>
              </tr>
          </thead>
          <tbody id="blist">

          </tbody>
      </table>
      <button class="btn btn-sm btn-primary" onclick="toggle()">등록</button>
      <div class="mt-4" id="book_register" style="display:none;">
       <!-- 책 등록 폼 -->
          <form>
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
              <button type="button" class="btn btn-primary btn-sm" onclick="register()">등록</button>
              <button type="reset" class="btn btn-danger btn-sm">취소</button>
          </form>
      </div>
    </div>
    <div class="card-footer">웹기반 인공지능 Track2 (B) - 박매일</div>
  </div>
</div>

</body>
</html>