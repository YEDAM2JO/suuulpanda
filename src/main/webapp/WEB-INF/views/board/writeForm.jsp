<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">


<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">

<link rel="stylesheet" href="assets/css/cart.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#ls table{
	
		border : 1px black;
	}
	#ls th,td{
		
		border : 1px black;
	}
	
</style>
</head>
<body>
	<div align="center">
		<h1>게시글 등록</h1>
	</div>
	<div id="ls" align="center">
		<form id="frm" action="boardInsert.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="150">작성일자</th>
						<td width="150">
							<input type="date" id="boardDate" name="boardDate" readOnly>
						</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="3">
							<input type="text" id="boardTitle" name="boardTitle" size="70" value="상품 Q&A입니다." readOnly>
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3">
							<textarea rows="10" cols="97" id="boardContent" name="boardContent" placeholder="내용을 입력해주세요." required></textarea>
						</td>
					</tr>
				</table>
			</div>
			<br>
			
			<div>
				<input type="hidden" name="boardS" id="boardS">
			</div>
			<div>
				<input type='checkbox' name="boardSecret" id="boardSecret" onclick="settingSecret()" value="N">비밀글 여부
				<input type="submit" value="등록">&nbsp;&nbsp;
				<input type="reset" value="취소">&nbsp;&nbsp;
				<input type="button" value="목록" onclick="location.href='boardList.do?page=1'">
			</div>
		</form>
	</div>
	
<script>
  document.getElementById('boardDate').value = new Date().toISOString().substring(0, 10);
  
  function settingSecret(){
	  let box = document.getElementById("boardSecret");
	  let title = document.getElementById("boardTitle");
	  let is_checked = document.getElementById("boardSecret").checked;
	  let boardS = document.getElementById("boardS");
	  
	  if(is_checked == true){
		  boardS.value = "Y";
		  title.value = "🔒︎상품 Q&A입니다.";
	  }
	  if(is_checked == false){
		  boardS.value = "N";
		  title.value = "상품 Q&A입니다.";
	  }
  }
</script>	
</body>
</html>