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
  <script>
     function quantityUpdate(index){
        //  cart.id, quantity ?
        let quantity=document.getElementById("cartNumber"+index).value;
        let cart_id=document.getElementById("cartId"+index).value;
        console.log(quantity, cart_id);
        document.getElementById("quantity").value=quantity;
        document.getElementById("cart_id").value=cart_id;
        document.getElementById("frm").submit();
     }
  </script>
</head>
<body>
    <form id="frm" action="/s01/cartQuantityUpdate" method="post">
       <input type="hidden" id="quantity" name="quantity"/>
       <input type="hidden" id="cart_id" name="id"/>
       <input type="hidden" id="customer_id" name="customer_id" value="${cus.id}"/>
    </form>
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
	             <th>취소</th>
	           </tr>
	         </thead>
	         <tbody>
	         <c:set var="totalAmount" value="0"/>
	         <c:if test="${!empty cartList}">
	          <c:forEach var="cart" items="${cartList}" varStatus="status">
	            <c:set var="totalAmount" value="${totalAmount+(cart.quantity*cart.price)}"/>
	            <tr>
	              <td>${cart.book_id}</td>
	              <td>${cart.title}</td>
	              <td>
	                 <input type="number" onchange="quantityUpdate(${status.index})" id="cartNumber${status.index}" min="1" class="form-control" value="${cart.quantity}"/>
	                 <input type="hidden" id="cartId${status.index}" value="${cart.id}"/>
	              </td>
	              <td>${cart.price}</td>
	              <td>${cart.quantity*cart.price}</td>
	              <td><a href="/s01/removeCart/${cart.id}/${cart.customer_id}" class="btn btn-sm btn-warning">취소</a></td>
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
	      <!-- 총액 표시 -->
          <div class="text-right">
            <strong>총 금액 :<fmt:formatNumber value="${totalAmount}" pattern="#,###"/>원</strong>
          </div>
	      <!-- 리스트, 구매 버튼 -->
	      <div class="card-footer text-center">
	         <a href="/s01/bookList" class="btn btn-secondary btn-sm">리스트</a>
	         <button class="btn btn-sm btn-success">구매</button>
	      </div>
	    </div>
	    <div class="panel-footer">웹기반 인공지능 Track2 (B) - 박매일</div>
	  </div>
	</div>
</body>
</html>