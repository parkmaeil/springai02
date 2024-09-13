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
  <script src="${cpath}/resources/js/view.js"></script>
  <script>
       bookView("${id}");
  </script>
</head>
<body>

<div class="container mt-4">
  <h2>Restful Service(SOA), Rest API</h2>
  <div class="card">
    <div class="card-header">Book View</div>
     <div id="bookView" class="card-body">

     </div>
     <div class="mx-4 mb-4">
      <button class="btn btn-sm btn-primary">리스트</button>
      <button class="btn btn-sm btn-primary">수정</button>
      <button class="btn btn-sm btn-primary">삭제</button>
     </div>
    </div>
    <div class="card-footer">웹기반 인공지능 Track2 (B) - 박매일</div>
  </div>
</div>

</body>
</html>