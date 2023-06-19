<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">

<link rel="stylesheet" href="assets/css/cart.css">


<style>
	
img {
  width: 500px;
  height: auto;
  object-fit: cover;
}
</style>
</head>
<body>
    <tiles:insertAttribute name="header"/>
    <jsp:include page="productmenu.jsp"></jsp:include>

    <div align="center">

        <div>
            <h1>제품 수정</h1>
        </div>
        <div>

            <form id="frm" action="productUpdate.do" method="post" enctype="multipart/form-data">
                <table border="1">
                    <tr>
         
                        
                       <td  rowspan="9" style="width: 800px;">
                         <input  type= "hidden" name="pfile" value="${product.productImg}">
<img src="${pageContext.request.contextPath}/upload/${empty pfile ? product.productImg : pfile}" alt="productImg">
                         
      <!--           
    <img src="${pageContext.request.contextPath}/upload/${product.productImg}"  alt="productImg" >
      -->
    <br>
    <input type="file" id="file_${product.productImg}" name="pfile" onchange="showImage(this);" accept="image/*">
    <br>
    <img id="preview" src="" alt="미리보기 이미지" width="200" height="200">

					</td>


                        <th>순번</th>
                        <th>항목</th>
                        <th>내용</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>상품번호</td>
                        <td>
                            <input type="text" id="product.productId" name="productId"
                                value="${product.productId != null ? product.productId : ''}" readonly>
                        <td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>상품명</td>
                        <td>
                            <input type="text" id="productName" name="productName"                                                                                           
                                value="${product.productName != null ? product.productName : ''}">
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>술종류</td>
                        <td>
                            <input type="text" id="productKind" name="productKind"
                                value="${product.productKind != null ? product.productKind : ''}">
                        </td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>상품가격</td>
                        <td>
                            <input type="text" id="productPrice" name="productPrice"
                                value="${product.productPrice != null ? product.productPrice : ''}">
                        </td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>상품등록일</td>
                        <td>
                            <input type="date" id="productDate" name="productDate"
                                value="${product.productDate != null ? product.productDate : ''}">
                        </td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>상품당도</td>
                        <td>
                            <input type="text" id="productTaste" name="productTaste"
                                value="${product.productTaste != null ? product.productTaste : ''}">
                        </td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>탄산유무</td>
                        <td>
                            <input type="text" id="productSparkling" name="productSparkling"
                                value="${product.productSparkling != null ? product.productSparkling : ''}">
                        </td>
                    </tr>
						<tr>
                        <td>8</td>
                        <td>알콜도수</td>
                        <td>
                            <input type="text" id="productABV" name="productABV"
                                value="${product.productABV != null ? product.productABV : ''}">
                        </td>

                    </tr>


                    <%-- <tr>
                        <td>9</td>
                        <td>특가여부</td>
                        <td>
                            <input type="text" id="productSale" name="productSale"
                                value="${product.productSale != null ? product.productSale : ''}">
                        </td>

                    </tr>
                    
                    <tr>
                        <td>10</td>
                        <td>특가율</td>
                        <td>
                            <input type="text" id="productSalePercent" name="productSalePercent"
                                value="${product.productSalePercent != null ? product.productSalePercent : ''}">
                        </td>

                    </tr>
                    <tr>
                        <td>11</td>
                        <td>특가가격</td>
                        <td>
                            <input type="text" id="productproductSalePrice" name="productSalePrice"
                                value="${product.productSalePrice != null ? product.productSalePrice : '0'}">
                        </td>
                    </tr> --%>
                </table>

        </div>
        <br>
        <div>
            <input type="hidden" name="productId" value="${product.productId}">
        </div>
        <div>
            <input type="submit" value="등록">&nbsp;&nbsp;
            <input type="reset" value="취소">&nbsp;&nbsp;
            <button type="button" onclick="location.href='productListMng.do'">목록</button>
        </div>
        </form>
        <!-- 
        <div>
            <c:if test="${not empty id}">
                <button type="button" onclick="location.href='productInsertForm.do'">제품 등록</button>
                <button type="button" onclick="location.href='productEdit.do'">제품 정보 수정</button>
            </c:if>
        </div>
        -->
    </div>
    <tiles:insertAttribute name="footer" />
    <script type="text/javascript">
        function productChois(id) {
            let frm = document.getElementById("frm");
            frm.productId.value = id;
            frm.submit();
        }
    </script>
    <script type="text/javascript">
    function showImage(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('preview').src = e.target.result;
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
    

</body>
</html>
