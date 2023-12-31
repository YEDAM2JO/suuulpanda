<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	background-color: #fff;
	font-family: 'Roboto', sans-serif;
	font-weight: 400;
	color: #333;
}

h1 {
	color: #333;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	padding: 10px;
	text-align: left;
	border: 1px solid #ddd;
}

th {
	background-color: #f5f5f5;
}

textarea {
	width: 100%;
	padding: 10px;
	border: 1px solid #ddd;
	resize: none;
}

button {
	background-color: #333;
	color: #fff;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
}

button:hover {
	background-color: #222;
}

p {
    padding: 5px;
    margin-bottom: 5px;
    margin-left : 10px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
	margin: 10px;
	padding: 10px;
}
    .report-form {
        display: inline;
        background-color: #f2f2f2;
        padding: 10px;
        border-radius: 5px;
    }

    .report-form label {
        font-weight: bold;
    }

    .report-form select {
        width: 200px;
        padding: 5px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    .report-form input[type="submit"] {
        background-color: #333;
        color: white;
        padding: 8px 16px;
        border: 1px solid black;
        border-radius: 0;
        cursor: pointer;
    }

    .report-form input[type="submit"]:hover {
        background-color: #222;
    }
</style>

</head>
<body>
	<div align="center">
		<br>
		<br>
		<h1>게시글 상세보기</h1>
		<br>
	</div>
	<div id="ls2" align="center">
		<table border="1" style="width: 80%;">
			<tr>
				<th width="70">순번</th>
				<td width="50" align="center">${board.boardId }</td>
				<th width="100">작성자</th>
				<td width="150" align="center">${board.memberId }</td>
				<th width="100">작성일자</th>
				<td width="150" align="center">${board.boardDate }</td>
				<th width="100">조회수</th>
				<td width="70" align="center">${board.boardHit }</td>
			</tr>
			<tr>
				<th colspan="2">제목</th>
				<td colspan="6">${board.boardTitle }</td>
			</tr>
			<tr>
				<th colspan="2">내용</th>
				<td colspan="6"><textarea rows="10" cols="97" readonly>${board.boardContent }</textarea>
				</td>
			</tr>
		</table>
	</div>
	<br>
<div>
    <div align="center">
        <c:if test="${id == board.memberId || id == 'manager'}">
            <button type="button" onclick="callFunction('E')">수정</button>&nbsp;&nbsp;
            <button type="button" onclick="callFunction('D')">삭제</button>&nbsp;&nbsp;
        </c:if>
        
        <!-- 신고하기 -->
        <c:if test="${id != board.memberId && id != 'manager' && board.memberId != 'manager'}">
        <form id="reportForm" action="reportAction.do" method="post" class="report-form">
            <input type="hidden" id="memberId" name="memberId" value="${board.memberId}">
            <label for="reportContent">신고 내용을 선택하세요 : </label>
            <select id="reportContent" name="reportContent">
                <option value="관련 없는 내용">관련 없는 내용</option>
                <option value="욕설">욕설</option>
                <option value="음란물">음란물</option>
            </select>
            <input type="hidden" id="boardId2" name="boardId2" value="${board.boardId }">
            <input type="submit" value="신고하기">
        </form>
        </c:if>
        
        <button type="button" onclick="location.href='boardList.do?page=1'">목록</button>
    </div>
</div>
	
	<div>
		<!-- action은 E냐 D에 따라 액션이 달라지므로 적지않음. javascript에서 frm.action으로 설정 -->
		<form id="frm" method="post">
			<input type="hidden" id="boardId" name="boardId"
				value="${board.boardId }">
			<!-- noticeId는 같이 넘어가야하므로 히든폼에 noticeId를 담는다id와 name은 vo객체명 그대로 쓴다 -->
		</form>
	</div>
	<hr>
	<p>댓글</p>
	<c:forEach items="${reples}" var="r">
		<div>
			<p>${r.repleContent }</p>
			<p>${r.repleDate }</p>
			<c:if test="${id eq 'manager'}">
				<button type="button" onclick="repleDelete(event, ${r.repleId})">삭제</button>
			</c:if>
			<br>
		</div>
		<br>
	</c:forEach>

	<script>
		function repleDelete(event, id) {
			event.target.parentNode.remove();
			let url = "ajaxRepleDelete.do?id=" + id + "&boardId=" + ${board.boardId };

			fetch(url)
				.then(response => response.text());

		}
		
		function callFunction(str){
			let frm = document.getElementById("frm");
			if(str=='E'){
				frm.action = "boardEdit.do"; //액션 = 동작되는 것. 폼객체가 가지고 있는 action속성에 noticeEdit을 담아라
			} else {
				frm.action = "boardDelete.do";
			}
			
			frm.submit(); //이폼이 전송
		}
		
	</script>
</body>
</html>
