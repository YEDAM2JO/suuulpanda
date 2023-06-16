<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<style>
	.cart__list__checkbox {
		margin-bottom: 10px; /* 간격을 늘리고자 하는 값으로 조정 */
	}
	
	.cart__list__total {
		background-color: rgba(0, 0, 0, 0.1); /* 회색 불투명 네모 박스의 배경색 지정 */
		padding: 10px; /* 박스 내부의 여백 설정 */
		text-align: center; /* 텍스트 가운데 정렬 */
		margin-top: 20px; /* 네모 박스와 line 사이의 간격 조정 */
	}

	.cart__list__total p {
		margin: 0; /* 문단의 위아래 여백 제거 */
	}

	.cart__list__line {
		border-top: 1px solid #ccc; /* line의 스타일 설정 */
		margin-top: 20px; /* line 위쪽 간격 조정 */
		margin-bottom: 20px; /* line 아래쪽 간격 조정 */
	}



</style>

<head>
	<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">  
	<link rel="stylesheet" href="assets/css/cart.css">

<meta charset="UTF-8">
<title>장바구니</title>
</head>

<body>
<tiles:insertAttribute name="header"/>
    <section class="cart">
    
        <div class="cart__information">
            <ul>
                <li>장바구니예여</li>
                <li>장바구니 배송 안내문구</li>
            </ul>
        </div>
        
        <div><h2>장바구니</h2></div>
<div>
	<table class ="cart__list">
			<form>
			
		<thead>
	    <tr>
	        <th width="50" class="cart__list__checkbox"> <!-- Reduce width to 50px -->
	            <input type="checkbox" class="individual_cart_checkbox input_size_">
	        </th>
	        <th width="150">상품정보</th>
	        <th width="150">옵션</th>
	        <th width="150">상품금액</th>
	        <th width="150">배송비</th>
	    </tr>
		</thead>
			
		<tbody>
			<tr class="cart__list__detail">
				<c:forEach items="${product}" var="p">
					<tr>
						<td align="center" class="cart__list__checkbox"></td>
						<td align="center">${p.productName}</td>
						<td align="center">${p.productCount}</td>
						<td align="center">${p.productPrice}</td>
						<td align="center">${p.productFee}</td>
					</tr>
				</c:forEach>
			</tr>
		</tbody>
		
		<tfoot>
			<tr>
				<td>
					<input type="checkbox">
					<button class="cart__list__optionbtn">선택상품 삭제</button>
				</td>
				<td>
					<div class="cart__list__total">
						<p>총 주문 금액: 상품1 + 상품2 금액</p>
					</div>
				</td>
			</tr>
		</tfoot>

		</form>
	</table>
</div>

    <div class="cart__mainbtns">
        <a href="product.do"><button class="cart__bigorderbtn left">쇼핑 계속하기</button></a>
        <a href="주문하기"><button class="cart__bigorderbtn right">주문하기</button></a>
    </div>   
    </section>
    
<tiles:insertAttribute name="footer"/>
</body>
</html>