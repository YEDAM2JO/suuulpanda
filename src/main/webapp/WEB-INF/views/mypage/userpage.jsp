<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<style>
	.container {
		display: flex;
		justify-content: center;
	}

	.container img {
		flex: 1;
		max-width:200px;
		max-height: 200px;
		object-fit: cover; /* 이미지 비율 유지 및 정사각형으로 표시 */
		width:200px; /* 이미지 너비를 100px로 지정 */
		height: 200px; /* 이미지 높이를 100px로 지정 */
		margin: 20px;
	}
</style>
<head>
<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    
<link rel="stylesheet" href="assets/css/cart.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<tiles:insertAttribute name="header"/>

	<section>
	<br>
	<div class="container">
	<a  href="userorderlist.do"><img src="assets/img/002.png"></a> <!-- 고객 주문 내역 -->
	<a  href="userEditInfo.do"><img src="assets/img/003.png"></a> <!-- 고객 회원 정보 수정 -->
	<a  href="userInfoDelete.do"><img src="assets/img/001.png"></a> <!-- 회원 탈퇴 -->
</div><br><br>
	
<div align ="center">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <p class="card-title">총 주문 건수 : n건</p>
        <p class="card-text">총 주문 금액 : n원</p>
        
      </div>
    </div>
  </div>
</div>


	<div>
         <input type="hidden" name="memberId" value="${member.memberId}">
     </div>

	<br><br>
	</section>
<tiles:insertAttribute name="footer"/>
</body>
</html>