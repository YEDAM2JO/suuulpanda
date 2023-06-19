<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<style>
	    .navbar-sm-brand {
	        flex: 1; /* 동일한 공간을 차지하도록 설정 */
	    }
	    
	</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
    <div class="container text-light">
        <div class="w-100 d-flex justify-content-between">
            <div>
            <c:if test="${not empty name }">
                <a class="navbar-sm-brand text-light text-decoration-none" href="userpage.do">${name}님 환영합니다.</a>
     		</c:if>
            </div>
           
             	 	
            <!-- 로그인 했을 때 로그아웃이라고 상단에 뜨게 해야됨 -->
            <div>
            <c:if test="${not empty name }">
                <a class="navbar-sm-brand text-light text-decoration-none" href="logout.do">로그아웃</a>
            </c:if>
            </div>
        </div>
    </div>
</nav>
    <!-- Close Top Nav -->



    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="main.do">

                SULPANDA

            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
				<div class="flex-fill">
					<ul
						class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
						<li class="nav-item"><a class="nav-link" href="main.do">Home</a>
						</li>


						<!-- 전체상품페이지 -->
						<li class="nav-item"><a class="nav-link"
							href="productList.do">전체상품</a></li>
						<li class="nav-item"><a class="nav-link" href="#">술추천</a></li>
						<li class="nav-item"><a class="nav-link"
							href="boardList.do?page=1">문의게시판</a></li>
					</ul>
				</div>

				<div class="navbar align-self-center d-flex">
					<!-- 검색 버튼 XXX
					<div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
						<div class="input-group">
							<input type="text" class="form-control" id="inputMobileSearch"
								placeholder="Search ...">
							<div class="input-group-text">
								<i class="fa fa-fw fa-search"></i>
							</div>
						</div>
					</div>
					<a class="nav-icon d-none d-lg-inline" href="#"
						data-bs-toggle="modal" data-bs-target="#templatemo_search"> <i
						class="fa fa-fw fa-search text-dark mr-2"></i>
					</a>
					-->
					

					<!--장바구니-->
					<a class="nav-icon position-relative text-decoration-none"
						href="cartList.do"> <i
						class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>

					</a>


					<c:if test="${empty id}">
						<a id="login-icon"
							class="nav-icon position-relative text-decoration-none"
							href="login.do"> <i class="fa fa-fw fa-user text-dark mr-3"></i>
						</a>
					</c:if>

					<c:if test="${not empty id }">

						<c:choose>
							<c:when test="${id eq 'manager'}">
								<a id="login-icon"
									class="nav-icon position-relative text-decoration-none"
									href="managerpage.do"> <i
									class="fa fa-fw fa-user text-dark mr-3"></i>
								</a>
							</c:when>

							<c:otherwise>
								<a id="login-icon"
									class="nav-icon position-relative text-decoration-none"
									href="userpage.do"> <i
									class="fa fa-fw fa-user text-dark mr-3"></i>
								</a>
							</c:otherwise>
						</c:choose>
					</c:if>

				</div>
			</div>

        </div>
    </nav>
</body>
</html>