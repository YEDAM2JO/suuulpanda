<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<style>
/* 반짝이는 효과를 위한 CSS */
.sparkle-animation {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-image: radial-gradient(rgba(255, 255, 255, 0.5),
		rgba(255, 255, 255, 0.5) 50%, rgba(255, 255, 255, 0.4));
	background-size: 200% 200%;
	animation: sparkle 5s linear infinite; /* 속도를 느리게 조절하기 위해 5초로 변경 */
	opacity: 0;
	pointer-events: none;
}

@
keyframes sparkle { 0% {
	opacity: 0;
}
30


%
{
opacity


:


1
;


}
70


%
{
opacity


:


0
;


}
100


%
{
opacity


:


0
;


}
}
</style>
</head>
<body>


	<!-- Start Content -->

	<div class="container py-5">
		<div class="row">
			<div class="col-lg-3">
				<h1 class="h2 pb-4">Categories</h1>
				<ul class="list-unstyled templatemo-accordion">
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="productList.do"> 전체 상품 </a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="productWine.do"> 와인 </a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="productTraditional.do"> 전통주 </a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="productBeer.do"> 맥주 </a></li>
				</ul>
			</div>

			<div class="col-lg-9">
				<div class="row">
					<div class="col-md-6">
						<ul class="list-inline shop-top-menu pb-3 pt-1">
							<li class="list-inline-item">
								<p>전체상품</p>
							</li>
						</ul>
					</div>
					<div class="col-md-6 pb-4">
						<div class="d-flex">
							<select class="form-control">
								<option>최신순</option>
								<option>높은 가격순</option>
								<option>낮은 가격순</option>
							</select>
						</div>
					</div>
				</div>
				<form action="searchProduct.do" method="GET">
					<input type="text" name="product_name" /> <input type="submit"
						value="Search" />
				</form>
				<div class="row">
					<c:forEach items="${products}" var="p">
						<div class="col-md-4">
							<div class="card mb-4 product-wap rounded-0">
								<div class="card rounded-0">
									<c:choose>
										<c:when test="${p.productSale eq 'Y'}">
											<!-- 반짝이는 효과를 적용한 이미지 -->
											<div class="image-wrapper sparkle-container"
												style="position: relative;">
												<a href="productSelect.do?productId=${p.productId}"> <img
													style="height: 370px; width: 303px;"
													src="${pageContext.request.contextPath}/upload/${p.productImg}"
													alt="상품이미지">
													<div class="sale-label"
														style="position: absolute; top: 0; left: 0; color: red; font-weight: bold; background-color: white; padding: 5px; opacity: 0.8;">세일중</div>
													<div class="sparkle-animation"></div>
												</a>
											</div>
										</c:when>
										<c:otherwise>
											<!-- 일반적인 이미지 -->
											<div class="image-wrapper">
												<a href="productSelect.do?productId=${p.productId}"> <img
													style="height: 370px; width: 303px;"
													src="${pageContext.request.contextPath}/upload/${p.productImg}"
													alt="상품이미지">
												</a>
											</div>
										</c:otherwise>
									</c:choose>

								</div>
								<div class="card-body">
									<h1 class="h3 text-decoration-none">${p.productName}</h1>
									<ul
										class="w-100 list-unstyled d-flex justify-content-between mb-0">
										<li>${p.productKind}</li>
										<li class="pt-2"><span
											class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
											<span
											class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
											<span
											class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
											<span
											class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
											<span
											class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
										</li>
									</ul>
									<p class="text-center mb-0">
										가격:
										<c:choose>
											<c:when test="${p.productSale eq 'Y'}">
												<del>
													<fmt:formatNumber value="${p.productPrice}"
														pattern="#,###원" />
												</del>
												<fmt:formatNumber value="${p.productSalePrice}"
													pattern="#,###원" />
											</c:when>
											<c:otherwise>
												<fmt:formatNumber value="${p.productPrice}" pattern="#,###원" />
											</c:otherwise>
										</c:choose>
									</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="row">
					<ul class="pagination pagination-lg justify-content-end">
						<li class="page-item disabled"><a
							class="page-link active rounded-0 mr-3 shadow-sm border-top-0 border-left-0"
							href="#" tabindex="-1">1</a></li>
						<li class="page-item"><a
							class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark"
							href="#">2</a></li>
						<li class="page-item"><a
							class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark"
							href="#">3</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End Content -->



	<script>
  // 반짝이는 효과를 위한 JavaScript
  const sparkleContainers = document.querySelectorAll('.sparkle-container');
  sparkleContainers.forEach(container => {
    const imageWrapper = container.querySelector('.image-wrapper');
    const sparkleAnimation = container.querySelector('.sparkle-animation');
    imageWrapper.addEventListener('mouseover', () => {
      sparkleAnimation.style.opacity = 1;
    });
    imageWrapper.addEventListener('mouseout', () => {
      sparkleAnimation.style.opacity = 0;
    });
  });
</script>

</body>
</html>
