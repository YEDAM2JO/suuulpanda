<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
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
body {
	font-family: 'Roboto', sans-serif;
	background-color: #f5f5f5;
}

header {
	background-color: #ffffff;
	padding: 20px;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
}

.center-align {
	text-align: center;
	margin-top: 50px;
}

h1 {
	font-size: 32px;
	color: #333333;
	margin-bottom: 30px;
}

form {
	max-width: 600px;
	margin: 0 auto;
	background-color: #ffffff;
	padding: 30px;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
	border-radius: 4px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th {
	background-color: #f2f2f2;
	padding: 10px;
	color: #333333;
	font-size: 16px;
	width: 150px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	text-align: center;
}

td {
	padding: 12px;
	border-bottom: 1px solid #cccccc;
	word-break: break-all;
}

input[type="text"], input[type="file"] {
	width: 100%;
	padding: 10px;
	border-radius: 4px;
	border: 1px solid #cccccc;
	box-sizing: border-box;
}

input[type="submit"], input[type="reset"] {
	padding: 8px 16px;
	background-color: rgba(76, 175, 80, 0.8);
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}

input[type="submit"]:hover, input[type="reset"]:hover {
	background-color: rgba(76, 175, 80, 1);
}
</style>

</head>
<body>

	<jsp:include page="productmenu.jsp"></jsp:include>

	<div align="center" style="margin-top: 30px;">
		<div>
			<h1>상 품 등 록</h1>
		</div>
		<div>
			<form id="frm" action="productInsert.do" method="post"
				enctype="multipart/form-data">
				<div>
					<table border="1">
						<tr>
							<th>상품 번호</th>
							<td><input type="text" id="productId" name="productId"
								required="required"></td>
						</tr>
						<tr>
							<th>상품 이름</th>
							<td><input type="text" id="productName" name="productName"
								required="required"></td>
						</tr>
						<tr>
							<th>상품 종류</th>
							<td><select id="productKind" name="productKind" required="required" style="width: 365px; height: 50px;" >
									<option value="">선택하세요</option>
									<option value="와인">와인</option>
									<option value="전통주">전통주</option>
									<option value="맥주">맥주</option>
							</select></td>
						</tr>
						<th>상품 이미지</th>
						<td><input type="file" id="pfile" name="pfile"></td>
						</tr>
						<tr>
							<th>상품 가격</th>
							<td><input type="text" id="productPrice" name="productPrice" placeholder="숫자만 입력" required="required"></td>
						</tr>
						<tr>
							<th>상품 당도</th>
							<td><select id="productTaste" name="productTaste" required="required" style="width: 365px; height: 50px;" >
									<option value="">선택하세요</option>
									<option value="스위트">스위트</option>
									<option value="중간">중간</option>
									<option value="드라이">드라이</option>
							</select></td>
						</tr>
						<tr>
							<th>탄산 유무</th>
							<td><select id="productSparkling" name="productSparkling" required="required" style="width: 365px; height: 50px;" >
									<option value="">선택하세요</option>
									<option value="있음">있음</option>
									<option value="없음">없음</option>
							</select></td>
						</tr>
						<tr>
							<th>상품 도수</th>
							<td><input type="text" id="productABV" name="productABV" placeholder="숫자만 입력" required="required"></td>
						</tr>

					</table>
				</div>
				<br>
				<div>
					<input type="submit" value="등록">&nbsp;&nbsp;
					<input type="reset" value="취소">&nbsp;&nbsp;
				</div>
			</form>
			<div style="margin-bottom: 30px;"></div>
		</div>
	</div>

</body>


</html>