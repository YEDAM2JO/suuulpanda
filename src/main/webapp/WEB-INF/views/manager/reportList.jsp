<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        <h1>신고 내역 페이지</h1>
        <table>
            <thead>
                <tr>
                    <th width="150">신고번호</th>
                    <th width="150">신고된 id</th>
                    <th width="150">신고 내용</th>
                    <th width="150">신고 일자</th>      
                    <th width="150">확인상태</th>       
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${reports}" var="r">
                    <tr onclick="reportChois('${r.boardId}','${r.reportId }', '${r.memberId }')">
                        <td>${r.reportId}</td>
                        <td>${r.memberId}</td>
                        <td>${r.reportContent}</td>
                        <td>${r.reportDate }</td>
                        <td>
                        <c:if test="${r.reportStatus == 'N' }">
                        미확인
                        </c:if>
                        <c:if test="${r.reportStatus == 'Y' }">
                        확인
                        </c:if>                    
                        </tr>
                </c:forEach>
            </tbody>
        </table>
        <c:forEach var="num" begin="${startPage }" end="${endPage }">
	      <a href="reportList.do?page=${num }">${num }</a>
    </c:forEach>
        <form id="frm" action="reportSelect.do" method="post">
            <input type="hidden" id="boardId" name="boardId" value="">
            <input type="hidden" id="reportId" name="reportId" value="">
            <input type="hidden" id="memberId" name="memberId" value="">
        </form>
    </div>
    

    <script>
        function reportChois(boardId, reportId, memberId) {
            let frm = document.getElementById("frm");
            frm.boardId.value = boardId;
            frm.reportId.value = reportId;
            frm.memberId.value = memberId;
            frm.submit();
            
        }
    </script>
</body>
</html>