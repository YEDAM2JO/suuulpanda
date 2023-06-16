<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">


<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">

<link rel="stylesheet" href="assets/css/cart.css">
</head>
<body>
	<tiles:insertAttribute name="header"/>
	<jsp:include page = "productmenu.jsp"></jsp:include>
	
	<div align="center">
	
		<div>
			<h1>제품 목록 보기</h1>
		</div>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th width="100">제품코드</th>
						<th width="200">제품명</th>
						<th width="200">제품이미지</th>
						<th width="200">이미지경로</th>
						<th width="200">제품가격</th>
						<th width="200">상품등록일</th>
						<th width="200">당도</th>
						<th width="200">탄산유무</th>
							<th width="200">도수</th>
							
							
										
										
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${products}" var="p">
						<tr onmouseover='this.style.backgroundColor="#fcecae";'
							onMouseleave='this.style.backgroundColor="#ffffff";'
							onclick="productChois(${p.productId})">
							<td align="center">${p.productId}</td>
							<td align="center">${p.productName}</td>
							<td align="center">${p.productKind}</td>
							<td align="center"><img
								src="<c:url value='/upload/${p.productImg}' />"
								alt="Product Image" width="100" height="100"></td>			
							<!-- 
							<td align="center">${p.productImgPath}</td>
							 -->
							<td align="center">${p.productPrice}</td>
							<td align="center">${p.productDate}</td>
							<td align="center">${p.productTaste}</td>
							<td align="center">${p.productSparkling}</td>
							<td align="center">${p.productABV}</td>
						<!--  	
							<td align="center"><input type="checkbox" name="productSale"
								value="on" ${p.productSale == 'Y' ? 'checked' : ''}></td>
							<td align="center">${p.productSalePercent}</td>
							<td align="center">${p.productSalePrice}</td>
						-->	
							<!-- <input type="text" id="result-${p.productId}"   value="result-${p.productId}"> -->
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
		<br>
		<div>
			<c:if test="${not empty id}">
				<button type="button" onclick="location.href='productInsertForm.do'">제품 등록</button>
				<button type="button" onclick="location.href='productEdit.do'">제품 정보 수정</button>
			</c:if>
		</div>
		
	</div>
	<tiles:insertAttribute name="footer"/>
</body>
</html>