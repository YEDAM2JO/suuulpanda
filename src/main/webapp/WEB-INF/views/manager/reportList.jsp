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
            margin: 0;
            padding: 0;
        }

        .container {

            margin: 0 auto;
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
            background-color: #dfdfdf;
        }
    </style>
</head>
<body>
    <div class="container">
    <br>
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
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table><br>
    <div style="text-align: center; margin-top: 10px;">
        <c:forEach var="num" begin="${startPage}" end="${endPage}" >
            <a href="reportList.do?page=${num}" style="display: inline-block; padding: 6px 12px; background-color: #525252; color: white; text-decoration: none; border: none; border-radius: 4px; margin-right: 5px;">${num}</a>
        </c:forEach>
    </div><br>

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