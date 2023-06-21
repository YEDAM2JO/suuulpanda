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
</head>
<body>

<jsp:include page="productmenu.jsp" />

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
					<tr onmouseover="this.style.backgroundColor='#fcecae';" 
						onmouseleave="this.style.backgroundColor='#ffffff';" 
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
