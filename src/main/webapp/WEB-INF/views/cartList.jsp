<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	    <div class="panel-heading"><span class="badge badge-danger">${cus.name}</span> : 장바구니</div>
	    <div class="panel-body">
	      <table class="table table-bordered">
	         <thead>
	           <tr>
	             <th>책번호</th>
	             <th>책이름</th>
	             <th>수량</th>
	             <th>가격</th>
	             <th>금액</th>
	           </tr>
	         </thead>
	         <tbody>
	         <c:if test="${!empty cartList}">
	          <c:forEach var="cart" items="${cartList}">
	            <tr>
	              <td>${cart.book_id}</td>
	              <td>${cart.title}</td>
	              <td>${cart.quantity}</td>
	              <td>${cart.price}</td>
	              <td>${cart.quantity*cart.price}</td>
	            </tr>
	          </c:forEach>
	         </c:if>
	         <c:if test="${empty cartList}">
	            <tr>
	                <td colspan="5">장바구니가 비었습니다.</td>
	            </tr>
	         </c:if>
	         </tbody>
	      </table
	    </div>
	    <div class="panel-footer">웹기반 인공지능 Track2 (B) - 박매일</div>
	  </div>
	</div>
</body>
</html>