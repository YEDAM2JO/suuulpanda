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
	<a  href="userInfoDeletePass.do"><img src="assets/img/001.png"></a> <!-- 회원 탈퇴 -->
	</div><br><br>
	
<div align ="center">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <p class="card-title">총 주문 건수 : ${orderNum } 건</p>
        <p class="card-text">총 주문 금액 : ${orderMoney }원</p>
        
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