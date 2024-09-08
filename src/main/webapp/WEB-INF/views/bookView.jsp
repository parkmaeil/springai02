<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<div class="container">
	  <h2>Spring MVC 01</h2>
	  <div class="panel panel-default">
	    <div class="panel-heading">책 상세보기(ID:${book.id})</div>
	    <div class="panel-body">
	       <table class="table table-bordered">
	         <tr>
	           <td>번호</td>
	           <td>${book.id}</td>
	         </tr>
	         <tr>
	           <td>제목</td>
	           <td>${book.title}</td>
	         </tr>
	         <tr>
	           <td>가격</td>
	           <td>${book.price}</td>
	         </tr>
	         <tr>
	           <td>저자</td>
	           <td>${book.author}</td>
	         </tr>
	         <tr>
	           <td>페이지</td>
	           <td>${book.page}</td>
	         </tr>
	       </table>
	       <!-- 수정, 삭제, 목록 , 수량, 구매(장바구니) -->
	       <table class="table table-bordered text-center">
	          <tr>
	            <td>
	              <button class="btn btn-sm btn-primary">수정</button>
	              <button class="btn btn-sm btn-warning">삭제</button>
	              <button class="btn btn-sm btn-info">목록</button>
	            </td>
	            <td>
	               수량:<input type="number"/>
	               <button class="btn btn-sm btn-danger">장바구니담기</button>
	            </td>
	          </tr>
	       </table>
	       <!-- 작성된 리뷰가 있으면 출력 /  없으면 리뷰가 없습니다. -->
	       <h3>리뷰 리스트(평점평균 : <span class="badge badge-danger">${avgRating}</span>/5)</h3>
	       <table class="table">
	         <c:if test="${not empty reviews}">
	          <c:forEach var="review" items="${reviews}">
                  <tr>
                    <td>작성일 : <fmt:formatDate value="${review.created_at}" pattern="yyyy-MM-dd" /></td>
                    <td>${review.content}<td>
                    <td>평점 : <span class="badge badge-danger">${review.rating}</span></td>
                  </tr>
	          </c:forEach>
	         </c:if>
	         <c:if test="${empty reviews}">
	          <tr>
	            <td colspan="3">등록된 리뷰가 없습니다.</td>
	          </tr>
	         </c:if>
	       </table>
	       <!-- 리뷰 : 내용, 작성자(로그인), 평점(1~5) -->
	       <h3>리뷰 작성</h3>
           <form action="/s01/reviewAdd" method="post">
           <input type="hidden" name="book_id" value="${book.id}"/>
           <table class="table">
              <tr>
                <td>내용</td>
                <td><textarea rows="2" name="content" class="form-control"></textarea></td>
              </tr>
              <tr>
                <td>평점</td>
                <td>
                  <select class="form-control" name="rating">
                    <option value="1">1점-매우 나쁨</option>
                    <option value="2">2점-나쁨</option>
                    <option value="3">3점-보통</option>
                    <option value="4">4점-좋음</option>
                    <option value="5">5점-매우 좋음</option>
                  </select>
                </td>
              </tr>
              <tr>
              <td colspan="2">
                 <button type="submit" class="btn btn-sm btn-primary">리뷰등록</button>
              <td>
              </tr>
           </table>
          </form>
	    </div>
	    <div class="panel-footer">웹기반 인공지능 Track2 (B) - 박매일</div>
	  </div>
	</div>
</body>
</html>