<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>
<div align="center">
		<h1>게시글 수정</h1>
	</div>
	<div align="center">
		<form id="frm" action="boardUpdate.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="150">작성자</th>
						<td width="150">
							<!-- 수정하면 안되는거라서 -->
							${board.memberId}     
						</td>
						<th width="150">작성일자</th>
						<td width="150">
							${board.boardDate }
						</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="3">
							${board.boardTitle }
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3">
							<textarea rows="10" cols="97" id="boardContent" name="boardContent" placeholder="내용을 입력해주세요." required>${board.boardContent }</textarea>
						</td>
					</tr>
				</table>
			</div>
			<br>
			<div>
			<!-- key(notice_id를 넘겨야 하므로 hidden form이용) -->
				<input type="hidden" name="boardId" value="${board.boardId }">
			</div>
			<div>
				<input type="submit" value="저장">&nbsp;&nbsp;
				<input type="reset" value="취소">&nbsp;&nbsp;
				<input type="button" value="목록" onclick="location.href='boardList.do?page=1'">
			</div>
		</form>
</body>
</html>