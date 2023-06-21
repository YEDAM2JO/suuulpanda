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
  form {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    max-width: 300px;
    margin-left: auto;
    padding: 10px 15px;
    background-color: #ffffff;
    border-radius: 4px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
  }

  input[type="text"] {
    flex-grow: 1;
    height: 32px;
    padding: 5px;
    border-radius: 4px;
    border: 1px solid #cccccc;
    box-sizing: border-box;
  }

  input[type="image"] {
    margin-left: 5px;
    width: 24px;
    height: 24px;
    border: none;
    background: transparent;
    cursor: pointer;
  }
  ::placeholder {
    font-size: 15px;
  }
  .pagination .page-link:hover, .pagination .page-link.active {
    background-color: rgb(243, 243, 243);
    color: #000;
}
</style>
</head>
<body>
	<div class="container py-5">
		<div class="row">

			<div class="col-lg-3">
				<h1 class="h2 pb-4">Categories</h1>
				<ul class="list-unstyled templatemo-accordion">
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="productList.do?productKind=전체&state=0&page=1">전체 상품</a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="productList.do?productKind=와인&state=0&page=1">와인</a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="productList.do?productKind=전통주&state=0&page=1">전통주</a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="productList.do?productKind=맥주&state=0&page=1">맥주</a></li>
				</ul>
			</div>

			<div class="col-lg-9">
				<div class="row">
					<div class="col-md-6">
						<ul class="list-inline shop-top-menu pb-3 pt-1">
							<li class="list-inline-item">
								<p>"${param.product_name}" 검색 결과</p>
							</li>
						</ul>
					</div>
					<div class="col-md-6 pb-4">
						<form action="searchProduct.do" method="GET">
							<input type="text" name="product_name" placeholder="전체 상품 검색" />
							<input type="image" src="assets/img/search.png" alt="Submit" />
						</form>
					</div>
				</div>
					<div class="row">
						<%-- 제품 출력 --%>
						<c:forEach items="${searchResults}" var="p">
							<div class="col-md-4">
								<div class="card mb-4 product-wap rounded-0">
									<div class="card rounded-0">
										<a href="productSelect.do?productId=${p.productId}"> <img
											style="height: 370px; width: 303px;"
											src="${pageContext.request.contextPath}/upload/${p.productImg}"
											alt="상품이미지">
										</a>
									</div>
									<div class="card-body">
										<a href="#" class="h3 text-decoration-none">${p.productName}</a>
										<p>${p.productKind }</p>
										<p class="text-center mb-0">
											가격:
											<fmt:formatNumber value="${p.productPrice}" pattern="#,###원" />
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
						<c:if test="${empty searchResults}">
						    <div class="col-md-12">
						        <p>해당하는 상품이 없습니다.</p>
						    </div>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		
</body>
</html>