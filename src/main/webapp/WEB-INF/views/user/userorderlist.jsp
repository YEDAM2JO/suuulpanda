<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고객 주문 내역 페이지</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }

        tr:hover {
            background-color: #9fff80;
        }
    </style>
<tiles:insertAttribute name="header"/>

</head>
<body>
    <div class="container">
        <h1>고객 주문 내역 페이지</h1>
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
                        <td>${o.orderTotalPrice}</td>
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







