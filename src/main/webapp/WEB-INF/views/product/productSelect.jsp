<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	
	<!-- 상품 상세보기 페이지 -->
	<section class="bg-light">
		<div class="container pb-5">
			<div class="row">
				<div class="col-lg-5 mt-5">
					<div class="card mb-3">
						<img class="card-img img-fluid"
							src="${pageContext.request.contextPath}/upload/${product.productImg}"
							alt="상품 이미지" id="product-detail">
					</div>
				</div>
				<!-- col end -->
				<div class="col-lg-7 mt-5">
					<div class="card">
						<div class="card-body">
							<h1 class="h2">${product.productName}</h1>
							<p class="h3 py-2">${product.productPrice}원</p>
							<ul class="list-inline">
								<li class="list-inline-item">
									<p>종류</p>
								</li>
								<li class="list-inline-item">
									<p class="text-muted">
										<strong>${product.productKind}</strong>
									</p>
								</li>
							</ul>

							<ul class="list-inline">
								<li class="list-inline-item">
									<p>당도</p>
								</li>
								<li class="list-inline-item">
									<p class="text-muted">
										<strong>${product.productTaste}</strong>
									</p>
								</li>
							</ul>

							<ul class="list-inline">
								<li class="list-inline-item">
									<p>탄산</p>
								</li>
								<li class="list-inline-item">
									<p class="text-muted">
										<strong>${product.productSparkling}</strong>
									</p>
								</li>
							</ul>

							<ul class="list-inline">
								<li class="list-inline-item">
									<p>도수</p>
								</li>
								<li class="list-inline-item">
									<p class="text-muted">
										<strong>${product.productABV}도</strong>
									</p>
								</li>
							</ul>

							<%-- Buy 및 Add To Cart 버튼 > 로그인 상태에 따라 표시 --%>
							<c:choose>
								<c:when test="${empty id}">
									<p style="color: red;"> 19세 미만 구매 불가 <br>로그인 후 구매 가능합니다.
									<br>
									<button class="btn btn-success btn-lg" onclick="location.href='login.do'">
									Login
									</button>
								</c:when>
								<c:otherwise>
									<form action="cartList.do" method="post">
										<input type="hidden" name="productId" value="${product.productId}">
										<div class="row">
											<div class="col-auto">
												<ul class="list-inline pb-3">
													<li class="list-inline-item text-right">
													Quantity
													<input type="hidden" name="product-quanity" id="product-quanity" value="1"></li>
													<li class="list-inline-item"><span class="btn btn-success" id="btn-minus">-</span></li>
													<li class="list-inline-item"><span class="badge bg-secondary" id="var-value">1</span></li>
													<li class="list-inline-item"><span class="btn btn-success" id="btn-plus">+</span></li>
												</ul>
											</div>
										</div>
										<div class="row pb-3">
											<div class="col d-grid">
												<button type="submit" class="btn btn-success btn-lg" name="submit" value="buy">
												Buy
												</button>
											</div>
											<div class="col d-grid">
												<button type="submit" class="btn btn-success btn-lg" name="submit" value="addtocart">
												Add To Cart
												</button>
											</div>
										</div>
									</form>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<tiles:insertAttribute name="footer" />

</body>
</html>