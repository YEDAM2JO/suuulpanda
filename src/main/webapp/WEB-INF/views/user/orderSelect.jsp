<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix= "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">
<style>
	.modal {
        position: absolute;
        top: 0;
        left: 0;

        width: 100%;
        height: 100%;

        display: none;

        background-color: rgba(0, 0, 0, 0.4);
      }

      .modal.show {
        display: block;
      }

      .modal_body {
        position: absolute;
        top: 50%;
        left: 50%;

        width: 400px;
        height: 300px;

        padding: 40px;

        text-align: center;

        background-color: rgb(255, 255, 255);
        border-radius: 10px;
        box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

        transform: translateX(-50%) translateY(-50%);
      }
      #myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#myform fieldset legend{
    text-align: right;
}
#myform input[type=radio]{
    display: none;
}
#myform label{
    font-size: 3em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
#myform label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform label:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#reviewContents {
    width: 100%;
    height: 150px;
    padding: 10px;
    box-sizing: border-box;
    border: solid 1.5px #D3D3D3;
    border-radius: 5px;
    font-size: 16px;
    resize: none;
}
#tableStyle body {
  color: #666;
  font: 14px/24px "Open Sans", "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", Sans-Serif;
}
#tableStyle table {
  border-collapse: separate;
  border-spacing: 0;
  width: 70%;
}
#tableStyle th,
#tableStyle td {
  padding: 6px 15px;
}
#tableStyle th {
  background: #42444e;
  color: #fff;
  text-align: left;
}
#tableStyle tr:first-child th:first-child {
  border-top-left-radius: 6px;
}
#tableStyle tr:first-child th:last-child {
  border-top-right-radius: 6px;
}
#tableStyle td {
  border-right: 1px solid #c6c9cc;
  border-bottom: 1px solid #c6c9cc;
}
#tableStyle td:first-child {
  border-left: 1px solid #c6c9cc;
}
#tableStyle tr:nth-child(even) td {
  background: #eaeaed;
}
#tableStyle tr:last-child td:first-child {
  border-bottom-left-radius: 6px;
}
#tableStyle tr:last-child td:last-child {
  border-bottom-right-radius: 6px;
}


</style>
<title>Insert title here</title>
<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">
    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
</head>
<body>
	<div id="tableStyle" align = "center">
	<div><h1>고객 주문 상세 페이지</h1></div>
	<table border="1">
	<thead>
		<tr>
			<th width="150">제품명</th>
			<th width="150">수량</th>
			<th width="150">리뷰</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items = "${order }" var="o">
			<tr>
				<td align = "center">${o.productName }</td>
				<td align = "center">${o.productCount }</td>
				<td align = "center">
					
    					<button type="button" class="btn-open-popup btn-3" onclick="modalOn('${o.productName }','${o.orderId }')">리뷰달기</button>
    				</td>
				</tr>
		</c:forEach>
	</tbody>
	</table>
	</div>
	<div class="modal">
      					<div class="modal_body">
      						<form class="mb-3" name="myform" id="myform" method="post" action="reviewInsert.do">
								<fieldset>
		
									<span class="text-bold">별점을 선택해주세요</span>
									<input type="radio" name="reviewStar" value="5" id="rate1"><label for="rate1">★</label>
									<input type="radio" name="reviewStar" value="4" id="rate2"><label for="rate2">★</label>
									<input type="radio" name="reviewStar" value="3" id="rate3"><label for="rate3">★</label>
									<input type="radio" name="reviewStar" value="2" id="rate4"><label for="rate4">★</label>
									<input type="radio" name="reviewStar" value="1" id="rate5"><label for="rate5">★</label>
								</fieldset>
							<div>
								<textarea class="col-auto form-control" type="text" id="reviewContents" name="reviewContent"
				  				placeholder="리뷰를 적어주세요"></textarea>
							</div>
							<div>
								<input type="hidden" id="productName" name="productName" value="">
								<input type="hidden" id="reviewScore" name="reviewScore" value="">
								<input type="hidden" id="orderId" name="orderId" value="">
							</div>
							<button type="button" onclick="reviewInsert()">등록</button>
							<button type="button" value="reset" onclick="closeModal()">취소</button>
						</form>			
      					</div></div>
	<script>
	const body = document.querySelector('body');
    const modal = document.querySelector('.modal');
    const btnOpenPopup = document.querySelector('.btn-open-popup');

    btnOpenPopup.addEventListener('click', () => {
      modal.classList.toggle('show');

      if (modal.classList.contains('show')) {
        body.style.overflow = 'hidden';
      }
    });

    modal.addEventListener('click', (event) => {
      if (event.target === modal) {
        modal.classList.toggle('show');

        if (!modal.classList.contains('show')) {
          body.style.overflow = 'auto';
        }
      }
    });
	
    function reviewInsert(){
    	let reviewScore = document.getElementById("reviewScore");
    	var star = document.querySelector('input[name="reviewStar"]:checked').value;
    	
    	reviewScore.value = star;
    	
    	let frm = document.getElementById("myform");
    	frm.submit();
    }
    function modalOn(name, id){
    	let productName = document.getElementById("productName");
    	productName.value = name;
    	let orderId = document.getElementById("orderId");
    	orderId.value = id;
    	modal.style.display = "flex"
    }
    function closeModal(){
    	modal.style.display = "none"
    }
    
    
	</script>
</body>
</html>