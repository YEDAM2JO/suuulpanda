<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
	
	<tiles:insertAttribute name="header" />
	<jsp:include page="productmenu.jsp"></jsp:include>
	<div align="center">
		<div>
			<h1>제품 상세보기</h1>
		</div>

		<div>
			<table border="1">
				<tr>
					<td rowspan="9" style="width: 400px; padding:5px; "><img class="card-img img-fluid"
							src="${pageContext.request.contextPath}/upload/${product.productImg}"
							alt="상품 이미지" id="product-detail" name="pfile"></td>
					<th>순번</th>
					<th>항목</th>
					<th>내용</th>
				</tr>
				<tr>
					<td>1</td>
					<td>상품번호</td>
					<td>${product.productId}</td>
				</tr>
				<tr>
					<td>2</td>
					<td>상품명</td>
					<td>${product.productName}</td>
				</tr>
				<tr>
					<td>3</td>
					<td>술종류</td>
					<td>${product.productKind}</td>
				</tr>
				<tr>
					<td>4</td>
					<td>상품가격</td>
					<td>${product.productPrice}</td>
				</tr>
				<tr>
					<td>5</td>
					<td>상품등록일</td>
					<td>${product.productDate}</td>
				</tr>
				<tr>
					<td>6</td>
					<td>상품당도</td>
					<td>${product.productTaste}</td>
				</tr>
				<tr>
					<td>7</td>
					<td>탄산유무</td>
					<td>${product.productSparkling}</td>
				</tr>
					<tr>
					<td>8</td>
					<td>알콜도수</td>
					<td>${product.productABV}</td>
				</tr>
				
				<%-- 	<tr>
					<td>9</td>
					<td>특가여부</td>
					<td>${product.productSale}</td>
				</tr>
					<tr>
					<td>10</td>
					<td>특가율</td>
					<td>${product.productSalePercent}</td>
				</tr>
					<tr>
					<td>11</td>
					<td>특가가격</td>
					<td>${product.productSalePrice}</td>
				</tr> --%>
			</table>

			<br>

			<div>

				<button type="button" onclick="callFunction('E')">수정</button>&nbsp;&nbsp;
				<button type="button" onclick="callFunction('D')">삭제</button>&nbsp;&nbsp;

				<button type="button" onclick="location.href='productListMng.do'">목록</button>

				<form id="frm" method="post">
					<input type="hidden" id="productId" name="productId"
						value="${product.productId}">
				</form>
			</div>
		</div>
		<script type="text/javascript">
			function callFunction(str) {
				let frm = document.getElementById("frm");
				if (str == 'E')
					frm.action = "productEdit.do";
				else
					frm.action = "productDelete.do";

				frm.submit();
			}
		</script>
	</div>
	</section>
	</div>
	<tiles:insertAttribute name="footer" />

</body>
</html>
