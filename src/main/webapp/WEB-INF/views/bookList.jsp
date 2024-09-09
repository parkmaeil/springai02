<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="container mt-4">
	  <h2>Book ERP System</h2>
	  <div class="panel panel-default">
	  <c:if test="${empty cus}">
	    <div class="d-flex mt-3 mb-3 justify-content-center">
            <form class="form-inline" action="/s01/login" method="post">
              <label for="username">아이디:</label>
              <input type="text" class="form-control" placeholder="Enter username" id="username" name="username">
              <label for="password">Password:</label>
              <input type="password" class="form-control" placeholder="Enter password" id="password" name="password">
              <button type="submit" class="btn btn-primary btn-sm">로그인</button>
            </form>
	    </div>
	   </c:if>
	   <c:if test="${not empty cus}">
        <div class="d-flex mt-3 mb-3 justify-content-center">
            <form class="form-inline" action="/s01/logout" method="post">
              <label>Welcome:${cus.name}님 방문을 환영합니다.</label>
              <label>Reserves:${cus.reserves}</label>
              <button type="submit" class="btn btn-primary btn-sm">로그아웃</button>
            </form>
	    </div>
	   </c:if>
	    <div class="panel-body">
	    <table class="table table-bordered table-hover">
        	    		<thead>
        	    			<tr>
        	    				<th>번호</th>
        	    				<th>제목</th>
        	    				<th>가격</th>
        	    				<th>저자</th>
        	    				<th>페이지</th>
        	    			</tr>
        	    		</thead>
        	    		<tbody>
        	    			<!-- 책 리스트 출력 -->
        	    			<c:forEach varStatus="i"  var="vo"	items="${bookList}">
        	    			<tr>
        	    				<td><c:out value="${vo.id}" /></td>
        	    				<td><a href="/s01/bookView/${vo.id}"><c:out value="${vo.title}" /></a></td>
        	    				<td><c:out value="${vo.price}" /></td>
        	    				<td><c:out value="${vo.author}" /></td>
        	    				<td><c:out value="${vo.page}" /></td>
        	    			</tr>
        	    			</c:forEach>
        	    		</tbody>
        	    	</table>
        	    	<c:if test="${not empty cus}">
        	    	   <button class="btn btn-sm btn-primary" onclick="location.href='/s01/bookRegister'">책등록</button>
                    </c:if>
	    </div>
	    <div class="panel-footer mt-4">웹기반 인공지능 Track2 (B) - 박매일</div>
	  </div>
	</div>
</body>
</html>




