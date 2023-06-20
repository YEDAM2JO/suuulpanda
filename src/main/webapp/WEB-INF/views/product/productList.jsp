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
    background-color: #FFFFFF;
    border-radius: 4px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
  }

  input[type="text"] {
    flex-grow: 1;
    height: 32px;
    padding: 5px;
    border-radius: 4px;

    border: 1px solid #CCCCCC;
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
						href="productList.do?productKind=전체">전체 상품</a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="productList.do?productKind=와인">와인</a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="productList.do?productKind=전통주">전통주</a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="productList.do?productKind=맥주">맥주</a></li>
				</ul>
			</div>
			<div class="col-lg-9">
				<div class="row">
					<div class="col-md-6">
						<ul class="list-inline shop-top-menu pb-3 pt-1">
							<li class="list-inline-item">
								<p></p>
							</li>
						</ul>
					</div>

					<div class="col-md-6 pb-4">
						<div class="d-flex justify-content-end">
							<form>
								<select class="form-control" id="sortOption" name="sortOption" onchange="changeOptionSelect()">
								<option value="" selected disabled hidden>==선택하세요==</option>
									<option value="latest">최신순</option>
									<option value="high">높은 가격순</option>
									<option value="low">낮은 가격순</option>
								</select>
							</form>
							<form action="searchProduct.do" method="GET" class="ml-2">
								<input type="text" name="product_name" placeholder="전체 상품 검색" />
								<input type="image" src="assets/img/search.png" alt="Submit" />
							</form>
						</div>
					</div>
				</div>
				<div class="row">
					<c:forEach items="${products }" var="p">
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
									<a href="#" class="h3 text-decoration-none">${p.productName }</a>
									<ul
										class="w-100 list-unstyled d-flex justify-content-between mb-0">
										<li>${p.productKind }</li>
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
										가격 :
										<fmt:formatNumber value="${p.productPrice}" pattern="#,###원" />
									</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div div="row">
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
	<script>
		function changeOptionSelect(){
			
			var optionSelect = document.getElementById("sortOption");
		     
			    // select element에서 선택된 option의 value가 저장된다.
			var selectValue = optionSelect.options[optionSelect.selectedIndex].value;
			 
			    // select element에서 선택된 option의 text가 저장된다.
			
			var url = window.location.href;
			 
			if(url.search("&state") > 0){
				url = url.substring(0,url.search("&state"));
			}
			
			
			if(selectValue=='latest'){
				url = url + "&state=A";
			} else if(selectValue == 'high'){
				url = url + "&state=H";
			} else if(selectValue == 'low'){
				url = url + "&state=L";
			}
			
			location.href=url;
			
		}
	
		
	</script>
</body>


</html>

