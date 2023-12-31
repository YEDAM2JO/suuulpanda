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

<div align="center">

	<div>
		<h1>회원별 구입 총액 순위</h1>
	</div>
	<div>
		<table border="1">
			<thead>
				<tr>
					<th width="100">순위</th>
					<th width="100">회원아이디</th>
					<th width="200">구입총액</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${orders}" var="o" varStatus="status">
					  <tr onmouseover="this.classList.add('hover-row');" 
                  onmouseleave="this.classList.remove('hover-row');" 
						onclick="orderChois('${o.memberId}')" >
						<td align="center">${status.index + 1}</td>
						<td align="center">${o.memberId}</td>
						<td align="center">${o.orderPrice}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
</div>

<!-- <script type="text/javascript">
 	function orderChois(id) {
		let frm = document.createElement("form");
		frm.action = "productSelectMng.do";
		frm.method = "post";
		let productId = document.createElement("input");
		productId.type = "hidden";
		productId.name = "productId";
		productId.value = id;
		frm.appendChild(productId);
		document.body.appendChild(frm);
		frm.submit();
	} 
</script> -->


</body>
</html>
