<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>

<style>
	.cart__list__checkbox {
		margin-bottom: 10px; /* 간격을 늘리고자 하는 값으로 조정 */
	}
	
    .cart__list {
        width: 100%;
        border-collapse: collapse;
    }
    
    .cart__list th,
    .cart__list td {
        padding: 10px;
        text-align: center;
        border: 1px solid #ccc;
    }
    
    .cart__list thead th {
        background-color: #f1f1f1;
    }
    
    .cart__list .cart__list__image {
        width: 150px;
        height: 200px;
        position: relative;
        overflow: hidden;
    }
    
    .cart__list .cart__list__image img {
        width: 100%;
        height: auto;
        transition: transform 0.3s ease;
    }
    
    .cart__list .cart__list__image:hover img {
        transform: scale(1.1);
    }
    
    .cart__list tfoot {
        background-color: rgba(0, 0, 0, 0.1);
    }
    
    .cart__list tfoot td {
        text-align: right;
        padding: 10px;
    }
    
    .cart__list__total p {
        margin: 0;
    }
	.input__readonly {
        border: 1px solid rgba(0, 0, 0, 0.3);
        background-color: transparent;
        color: #333;
        padding: 5px;
        outline: none;
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
	            <input type="checkbox" class="individual_cart_checkbox input_size_" onclick="checkAll(event)">
	        </th>
	        <th width="150">상품명</th>
	        <th width="110">상품이미지</th>
	        <th width="150">개수</th>
	        <th width="150">단가</th>
	        <th width="150">총금액</th>
	    </tr>
		</thead>
			
		<tbody>
			<tr class="cart__list__detail">
			<c:set var = "sum" value = "0" />
				<c:forEach items="${carts}" var="c">
					<tr>
						<td width="150" align="center" class="cartCheckbox"><input type="checkbox" value="${c.cartId }" name="checkBox">&nbsp;</td>
						<td width="150" align="center"><input type="text" value="${c.productName}" readonly class="input__readonly"></td>
						<td width="110" align="center">
							<a href="productSelect.do?productId=${c.productId}">
							<img alt="상품이미지" src="${pageContext.request.contextPath}/upload/${c.productImg}" style="height: 150px;">
							</a>
						</td>
						<td width="150" align="center"><input type='button' onclick='minus(${c.cartId}, ${c.productFee }, event)' value='-'/><input value="${c.productCount}" readonly ><input type='button' onclick='plus(${c.cartId}, ${c.productFee }, event)' value='+'/></td>
						<td width="150" align="center">${c.productFee}</td>
						<c:set var= "gob" value="${c.productCount * c.productFee}"/>
						<td width="150" align="center">${gob }</td>
					</tr>
					<c:set var= "sum" value="${sum + c.productCount * c.productFee}"/>
				</c:forEach>
			</tr>
		</tbody>
		
		<tfoot>
			<tr>
				<td>
					<div class="cart__list__total" align="center">
						<button class="cart__list__optionbtn" onclick="deleteItem()">선택상품 삭제</button>
					</div>
				</td>
				<td colspan="5">
					<div class="cart__list__total" align="center">
						총 장바구니 금액: <p id="sum2"><c:out value="${sum}"/> </p>
					</div>
				</td>
			</tr>
		</tfoot>

		</form>
	</table>
</div>

    <div class="cart__mainbtns">
        <a href="cartList.do"><button class="cart__bigorderbtn left">쇼핑 계속하기</button></a>
        <a href="#"><button class="cart__bigorderbtn right" onclick="order()">주문하기</button></a>
    </div>   
    </section>
    <script>
    	function minus(id, price, event){
    		if(event.target.nextElementSibling.value <= 1){
    			alert("더이상 내릴 수 없습니다.");
    		} else {
    			//앞단(수량, 총가격)
    			
    			let num = parseInt(event.target.nextElementSibling.value)-1;
    			event.target.parentNode.nextSibling.nextSibling.nextSibling.nextSibling.textContent = price * num;
    			event.target.nextSibling.value = num;
    			let sum2 = document.getElementById("sum2");
    			num = parseInt(sum2.textContent);
    			num = num-price;
    			
    			sum2.textContent = num;
    			
    			//뒷단
    			let url = "ajaxCountMinus.do?id=" + id;
    			
    			fetch(url)
    				.then(response => response.text());
    		}
    		
    	}
    	
    	function plus(id, price, event){
    		//앞단(수량, 총가격)
    		let num = parseInt(event.target.previousSibling.value)+1;
			
			event.target.parentNode.nextSibling.nextSibling.nextSibling.nextSibling.textContent = price * num;
    		event.target.previousSibling.value = num;
    		let sum2 = document.getElementById("sum2");
			num = parseInt(sum2.textContent);
			num = num+price;
			sum2.textContent = num;
			
	
    		//뒷단
    		let url = "ajaxCountPlus.do?id=" + id;
    		
    		fetch(url)
    			.then(response => response.text());
    	}
    	
    	 function deleteItem(){
             let ckb = document.querySelectorAll('input[type=checkbox]:checked');
          
             //기본 반복문
             for(var b of ckb){
            	 let id = b.value;
				let url = "ajaxCartDelete.do?id=" + id;
                 
                 fetch(url)
                 	.then(response => response.text())
                  	.then(text=>htmlProcess(text));
                 
                 
           
             }
             
             
             for(var b of ckb){
                 
                 b.parentNode.remove();
             }
             
            
         }
    	 
    	 function checkAll(event){
    		 let ckb = document.querySelectorAll('input[type=checkbox]');
    		 
    		 for(let i = 0; i<ckb.length; i++){
    			 ckb[i].checked = event.target.checked;
             }
    	 }
    	 
    	 function htmlProcess(data){
    		 
    	 }
    	 
    	 function order(){
    		 let query = 'input[name="checkBox"]:checked';
    		 let selectProduct = document.querySelectorAll(query);
    		 
    		 let selectProductLength = selectProduct.length;
    		 if(selectProductLength == 0) {
    			alert('구매하실 제품을 선택해주세요.');	 
    			return;
    		 }
    		 
    		 let cartId = '';
    		 selectProduct.forEach((el)  => {
    			 cartId += el.value + ',';
    		 });
    		 
    		 cartId = cartId.slice(0, -1);
    		 
    		 location.href = "/meddle/paymentOrder.do?cartId="+cartId;
    		 
    	 }
    	 
    	 
    	
    </script>

</body>
</html>