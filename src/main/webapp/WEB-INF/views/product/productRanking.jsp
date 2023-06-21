<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/css/cart.css">

<style>
    .hover-row:nth-child(1) {
        background-color: red;
    }

    .hover-row:nth-child(2) {
        background-color: orange;
    }

    .hover-row:nth-child(3) {
        background-color: yellow;
    }

    .hover-row:nth-child(4) {
        background-color: green;
    }

    .hover-row:nth-child(5) {
        background-color: blue;
    }

    .hover-row:nth-child(6) {
        background-color: indigo;
    }

    .hover-row:nth-child(7) {
        background-color: violet;
    }
</style>
</head>
<body>
<jsp:include page="productmenu1.jsp" />

<!--제품 판매 순위  -->

 <div align="center">
<br>
   <div>
      <h1>제품별 판매 순위</h1>
   </div>
   <div>
      <table border="1">
         <thead>
            <tr>
               <th width="100">순위</th>
               <th width="100">제품명</th>
               <th width="200">총 매출</th>
            </tr>
         </thead>
         <tbody>
            <c:forEach items="${orders}" var="o" varStatus="status">
               <tr onmouseover="this.classList.add('hover-row');" 
                  onmouseleave="this.classList.remove('hover-row');" 
                  onclick="orderChois('${o.productName}')" >
                  <td align="center">${status.index + 1}</td>
                  <td align="center">${o.productName}</td>
                  <td align="center">${o.productCount}</td>
               </tr>
            </c:forEach>
         </tbody>
      </table>
   </div>
   <br>
</div>




</body>
</html>