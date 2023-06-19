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

 
	<a  href="productListMng.do"><img src="assets/img/005.png"></a>
	<a  href="managerUpdateMember.do"><img src="assets/img/004.png"></a>

  
	<a  href="managerBoard.do?page=1"><img src="assets/img/006.png"></a>
</div><br><br><p>

	<br><br>
	<div align="center">
	 <div class="col-sm-6 mb-3 mb-sm-0">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">판매내역(정산)</h5>
        <p class="card-text">
        <c:forEach items = "${member}" var = "m">
					
						하루 정산 금액 : <p>
						어쩌고 저쩌고		
								
		</c:forEach></p>
       </div>
      </div>
    </div>
  </div>
  <br><br>

</section>

<tiles:insertAttribute name="footer"/>

</body>
</html>