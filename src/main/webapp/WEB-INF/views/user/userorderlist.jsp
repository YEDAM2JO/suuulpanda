<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <style>
     table {
      width: 90%;
      margin: 0 auto;
      border-collapse: collapse;
    }
    
    th {
      background-color: #ccc;
    }
    
    tbody tr:nth-child(even) {
    
    }
    
    th, td {
      border: 1px solid #ddd;
      padding: 8px;
    }
    
    tbody tr:hover {
      background-color: #e6e6e6;
      cursor: pointer;
    }
  </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>고객 주문 내역 페이지</title>



</head>
<body>
    <div class="container" align="center"><br>
        <h1>고객 주문 내역 페이지</h1><br>
        <table>
            <thead>
                <tr>
                    <th width="150">주문번호</th>
                    <th width="150">주문일자</th>
                    <th width="150">주문금액</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${orders}" var="o">
                    <tr onclick="orderChois('${o.orderId}')">
                        <td>${o.orderId}</td>
                        <td>${o.orderDate}</td>
                        <td>${o.orderPrice}원</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <form id="frm" action="orderSelect.do" method="post">
            <input type="hidden" id="orderId" name="orderId" value="">
        </form>
    </div>

    <script>
        function orderChois(id) {
            let frm = document.getElementById("frm");
            frm.orderId.value = id;
            frm.submit();
        }
    </script>
</body>
</html>







