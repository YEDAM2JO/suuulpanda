<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>


<title>Zay Shop eCommerce HTML CSS Template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">
<link rel="stylesheet" href="assets/css/main-timer.css">


<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">
<style>
.card-text { text-indent: 1em; }
</style>

</head>

<body>
	<!-- Start Top Nav -->

	<!-- Close Header -->

	<!-- Modal -->
	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="" method="get"
				class="modal-content modal-body border-0 p-0">
				<div class="input-group mb-2">
					<input type="text" class="form-control" id="inputModalSearch"
						name="q" placeholder="Search ...">
					<button type="submit"
						class="input-group-text bg-success text-light">
						<i class="fa fa-fw fa-search text-white"></i>
					</button>
				</div>
			</form>
		</div>
	</div>



	<!-- Start Banner Hero -->
	<div id="template-mo-zay-hero-carousel" class="carousel slide"
		data-bs-ride="carousel">
		<ol class="carousel-indicators">
			<li data-bs-target="#template-mo-zay-hero-carousel"
				data-bs-slide-to="0" class="active"></li>
		
		</ol>
		<div class="carousel-inner">


			<div class="carousel-item active">
				<div class="">
					<div class="">
						<div
							class="order-lg d-flex justify-content-center align-items-center">
							<img class="mx-auto" src="./assets/img/우주맥주.jpg" alt=""
								style="object-fit: cover; width: 100%; height: 600px;">
						</div>
						<div class="col-lg-12 mb-0 d-flex align-items-center">
							<div class="text-align-left align-self-center">
								<!-- 내용 추가 -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	
	</div>
	<!-- End Banner Hero -->


	<!-- Start Categories of The Month -->
	<section class="container py-5">
		<div class="row text-center pt-3">
			<div class="col-lg-6 m-auto">
				</p>
				<h1 class="h1">카테고리</h1>

			</div>
		</div>
		<div class="row">
			<div
				class="col-12 col-md-4 p-5 mt-3 d-flex flex-column justify-content-between">
				<div class="text-center">
					<a
						href="productList.do?productKind=와인&state=0&page=1">
						<img src="./assets/img/다나 에스테이트 바소 카베르네 소비뇽.png"
						class="rounded-circle img-fluid border"
						style="max-width: 100%; height: 300px;">
					</a>
				</div>
				<h5 class="text-center mt-3 mb-3">와인</h5>
				<p class="text-center" style="color:#000;">
				    <a href="productList.do?productKind=와인&state=0&page=1" class="btn btn-success" style="color: black;">구매하기</a>
				</p>
			</div>

			<div
				class="col-12 col-md-4 p-5 mt-3 d-flex flex-column justify-content-between">
				<div class="text-center">
					<a
						href="productList.do?productKind=전통주&state=0&page=1">
						<img src="./assets/img/조선3대명주 감홍로.png"
						class="rounded-circle img-fluid border"
						style="max-width: 100%; height: 300px;">
					</a>
				</div>
				<h2 class="h5 text-center mt-3 mb-3" >전통주</h2>
				<p class="text-center" style="color:#000;">
				    <a href="productList.do?productKind=전통주&state=0&page=1" class="btn btn-success" style="color: black;">구매하기</a>

				</p>
			</div>

			<div
				class="col-12 col-md-4 p-5 mt-3 d-flex flex-column justify-content-between">
				<div class="text-center">
					<a
						href="productList.do?productKind=맥주&state=0&page=1">

						<img src="./assets/img/아사히맥주.png"
						class="rounded-circle img-fluid border"
						style="max-width: 100%; height: 300px;">


					</a>
				</div>
				<h2 class="h5 text-center mt-3 mb-3">맥주</h2>
				<p class="text-center" style="color:#000;">
				    <a href="productList.do?productKind=맥주&state=0&page=1" class="btn btn-success" style="color: black; ">구매하기</a>
				</p>
			</div>
		</div>

	</section>
	<!-- End Categories of The Month -->


	<!-- Start Featured Product -->
	<section class="bg-light">
		<div class="container py-5">
			<div class="row text-center py-3">
				<div class="col-lg-6 m-auto">
					<h1 class="h1">추천상품</h1>
					<!--
					<p>Reprehenderit in voluptate velit esse cillum dolore eu
						fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
						proident.</p> -->
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-md-4 mb-4">
					<div class="card h-100">

						<a href="http://localhost/meddle/productSelect.do?productId=w006">
							<img src="./assets/img/도츠 아무르 도츠.png" class="card-img-top"
							alt="...">

						</a>
						<div class="card-body">
							<ul class="list-unstyled d-flex justify-content-between">
								<li><i class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i></li>
								<li class="text-muted text-right">440,000원</li>
							</ul>
							<a href="shop-single.html"
								class="h2 text-decoration-none text-dark">도츠 아무르 도츠</a>
								<br>
								<br>
							<p class="card-text">NV 빈티지 포함 전 라인들이 첫번째 압착 Cuvee만을 사용하며,
								철저한 품질 관리를 위해 AY지역 35km반경의 포도만 사용한다.</p>
							<p class="text-muted"></p>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-4 mb-4">
					<div class="card h-100">

						<a href="http://localhost/meddle/productSelect.do?productId=w003">
							<img src="./assets/img/플라워스 소노마 샤도네이.png" class="card-img-top"
							alt="...">

						</a>
						<div class="card-body">
							<ul class="list-unstyled d-flex justify-content-between">
								<li><i class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-muted fa fa-star"></i> <i
									class="text-muted fa fa-star"></i></li>
								<li class="text-muted text-right">132,000원</li>
							</ul>
							<a href="shop-single.html"
								class="h2 text-decoration-none text-dark">플라워스 소노마 샤도네이</a>
								<br>
								<br>
							<p class="card-text">플라워스의 샤도네이는 잘 익은 과일, 배, 아카시아 꽃향이 부드러운
								텍스쳐와 자연스러운 산도를 가진 섬세하고도 복합적인 와인이다</p>
							<p class="text-muted"></p>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-4 mb-4">
					<div class="card h-100">
						<a href="http://localhost/meddle/productSelect.do?productId=w010">
							<img src="./assets/img/바르바네라 디스페토 로쏘.png" class="card-img-top"
							alt="...">
						</a>
						<div class="card-body">
							<ul class="list-unstyled d-flex justify-content-between">
								<li><i class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i></li>
								<li class="text-muted text-right">32,000원</li>
							</ul>
							<a href="shop-single.html"
								class="h2 text-decoration-none text-dark"> 바르바네라 디스페토 로쏘</a>
								<br>
								<br>								
							<p class="card-text">첫 시작은 토스카나 끼안티였으나 현재 움브리아, 뿔리아, 시칠리아까지
								영역을 확장하였습니다. 현대적인 설비로 지속적인 연구를 하여 와인 퀄리티를 끊임없이 향상시키고 있습니다.</p>
							<p class="text-muted"></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Featured Product -->


	<!-- Start Footer -->

	<!-- End Footer -->

	<!-- Start Script -->
	<script src="assets/js/jquery-1.11.0.min.js"></script>
	<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/templatemo.js"></script>
	<script src="assets/js/custom.js"></script>
	<!-- End Script -->


	<!-- Kakaomap api  -->
	<br>
	<div align="center">

	<h1>매장 위치</h1>
	<div id="map" style="width:500px;height:400px;"></div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fc7464d2a4e6a63b76c439cbe264d159"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
    mapOption = {
        center: new kakao.maps.LatLng(35.86906775230762, 128.59328274668462), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption);

// 마커가 표시될 위치입니다
var markerPosition  = new kakao.maps.LatLng(35.86906775230762, 128.59328274668462);

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

marker.setMap(map);

var iwContent = '<div style="padding:5px;">술판다 동성로점<br><a href="https://map.kakao.com/link/map/술판다 동성로점,35.86906775230762,128.59328274668462" style="color:blue" target="_blank">지도보기</a> <a href="https://map.kakao.com/link/to/술판다 동성로점,35.86906775230762,128.59328274668462" style="color:blue" target="_blank">길찾기</a></div>',
    iwPosition = new kakao.maps.LatLng(35.86906775230762, 128.59328274668462); //인포윈도우 표시 위치입니다

// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
    position : iwPosition,
    content : iwContent
});
 
// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker);
	</script>
	</div><br>
	
  	<div>
		<!-- Google tag (gtag.js) -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=G-QBCV31L2RR"></script>
		<script>
		  window.dataLayer = window.dataLayer || [];
		  function gtag(){dataLayer.push(arguments);}
		  gtag('js', new Date());
		
		  gtag('config', 'G-QBCV31L2RR');
		</script>

	</div>
	

</body>

</html>