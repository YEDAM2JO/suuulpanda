
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <section class="cart">
        <div class="cart__information">
            <ul>
                <li>장바구니</li>
                <li>장바구니 배송 안내문구</li>
            </ul>
        </div>
        <div><h2>장바구니</h2></div>
	<div>
		<table border = "1">
			<thead>
				<tr>
					<th width="150">상품정보</th>
					<th width="150">옵션</th>
					<th width="150">상품금액</th>
					<th width="150">배송비</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items = "${product}" var = "p">
					<tr>
					
						<td align="center">${p.productName} </td>
						<td align="center">${p.productCount} </td> <!-- 수량 -->
						<td align="center">${p.productPrice}</td>
						<td align="center">${p.productFee}</td> <!-- 배송금액 -->
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
        <div class="cart__mainbtns">
            <button class="cart__bigorderbtn left">쇼핑 계속하기</button>
            <button class="cart__bigorderbtn right">주문하기</button>
        </div>
    </section>
</body>
</html>