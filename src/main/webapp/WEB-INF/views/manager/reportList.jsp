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
        .page-nation li{ 

    list-style: none;

} 

 

.page-wrap {

    text-align:center;

    font-size:0;

 }

.page-nation  {

    display: flex;

    justify-content: center;

    align-items: center;

    margin-top:20px;

}

 

.page-nation a {

    display:block;

    margin:0 3px;

    float:left;

    border:1px solid #e6e6e6;

    width:28px;

    height:28px;

    line-height:28px;

    text-align:center;

    background-color:#fff;

    font-size:13px;

    color:black;

    text-decoration:none;

    font-weight:bold;

}

.page-nation a:hover{

    background-color:gray;

    color:white;

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
        <div class="page-wrap">
			<ul class="page-nation">
        		<c:forEach var="num" begin="${startPage }" end="${endPage }">
	      			<li><a href="reportList.do?page=${num }">${num }</a></li>
    			</c:forEach>
    		</ul>
    	</div>
    
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