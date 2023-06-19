<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        width: 90%;
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
        margin-bottom: 5px;
    }

    #repleSection {
        margin-top: 20px;
        margin-bottom: 20px;
    }

    #repleSection button {
        margin-top: 10px;
    }
    
    table {
        width: 90%;
        border-collapse: collapse;
        margin-bottom: 20px;
        margin: 10px;
        padding: 10px;
    }
</style>

</head>
<body>
	<div align="center">
		<br><br>
		<h1>게시글 상세보기</h1>
	</div>
	<br>
	<div id="ls2" align="center">
		<table border="1">
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
				<td colspan="6">
					<textarea rows="10" cols="97" readonly>${board.boardContent }</textarea>
				</td>
			</tr>
		</table>
	</div>
	<br>
	<div align="center">
		<button type="button" onclick="callFunction('E')">수정</button>&nbsp;&nbsp;
		<button type="button" onclick="callFunction('D')">삭제</button>&nbsp;&nbsp;
		<button type="button" onclick="location.href='managerBoard.do?page=1'">목록</button>
	</div>

	<div>
		<form id="frm" method="post">
			<input type="hidden" id="boardId" name="boardId" value="${board.boardId }">
			<!-- noticeId는 같이 넘어가야하므로 히든폼에 boardId를 담는다 id와 name은 vo 객체명 그대로 쓴다 -->
		</form>
	</div>

	<hr>
	<p>댓글</p>
	<div id="repleSection">
	<table border="1">
		<c:forEach items="${reples}" var="r">
			<tr>
				<td>${r.repleContent }</td>
				<td>${r.repleDate }</td>
				<td>
				<c:if test="${id eq 'manager'}">
					<button type="button" onclick="repleDelete(${r.repleId}, event)">삭제</button>
				</c:if>
				</td>
			</tr>
		</c:forEach>
		</table>
	</div>
	<textarea rows="3" cols="40" id="repleContent" name="repleContent" placeholder="내용을 입력해주세요." autofocus></textarea><br>
	<div align="center">
		<button onclick="setReple(${board.boardId})">등록</button>
	</div>
	<br>

	<script type="text/javascript">
		function callFunction(str) {
			let frm = document.getElementById("frm");
			if (str == 'E') {
				frm.action = "boardEdit.do";
			} else {
				frm.action = "boardDelete.do";
			}
			frm.submit(); // 이 폼이 전송
		}

		function setReple(id) {
			let content = document.getElementById("repleContent").value;
			let url = "ajaxSetReple.do?id=" + id + "&content=" + content;

			fetch(url)
				.then(response => response.text())
				.then(text => htmlProcess(text));
		}

		function htmlProcess(data) {
			let content = document.getElementById("repleContent");
			let p = document.createElement("p");
			p.textContent = content.value;

			content.value = "";

			let div = document.getElementById("repleSection");
			div.appendChild(p);
			
			let delbtn = document.createElement("button");
			delbtn.innerHTML = "삭제";
            delbtn.onclick=function(event){repleDelete(data, event)};
			let br = document.createElement("br");
			div.appendChild(delbtn);
			div.appendChild(br);
		}

		function repleDelete(id, event) {			
			let url = "ajaxRepleDelete.do?id=" + id + "&boardId=" + ${board.boardId };
			fetch(url)
				.then(response => response.text())
				.then(res  => {
					event.target.parentNode.remove();
				});
		}
	</script>
</body>
</html>
