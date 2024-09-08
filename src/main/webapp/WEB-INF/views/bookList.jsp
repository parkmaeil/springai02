<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	  <h2>Spring MVC 01</h2>
	  <div class="panel panel-default">
	    <div class="panel-heading">Book</div>
	    <div class="panel-body">
	    <table class="table table-bordered table-hover">
        	    		<thead>
        	    			<tr>
        	    				<td>번호</td>
        	    				<td>제목</td>
        	    				<td>가격</td>
        	    				<td>저자</td>
        	    				<td>페이지</td>
        	    			</tr>
        	    		</thead>
        	    		<tbody>
        	    			<!-- 책 리스트 출력 -->
        	    			<c:forEach varStatus="i"  var="vo"	items="${bookList}">
        	    			<tr>
        	    				<td><c:out value="${vo.id}" /></td>
        	    				<td><a href="/s01/bookView/${vo.id}"><c:out value="${vo.title}" /></a></td>
        	    				<td><c:out value="${vo.price}" /></td>
        	    				<<td><c:out value="${vo.author}" /></td>
        	    				<td><c:out value="${vo.page}" /></td>
        	    			</tr>
        	    			</c:forEach>
        	    		</tbody>
        	    	</table>
        	    	<button class="btn btn-sm btn-primary" onclick="location.href='/s01/bookRegister'">책등록</button>

	    </div>
	    <div class="panel-footer">웹기반 인공지능 Track2 (B) - 박매일</div>
	  </div>
	</div>
</body>
</html>




