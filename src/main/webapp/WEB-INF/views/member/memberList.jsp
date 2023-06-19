<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	input[type=text]{
		display: inline-block;
		width:300px;
		border: none;
	}
</style>
	
</head>
<body>
	<div align = "center">
	<div><h1>회원 목록 보기</h1></div>
	<table border="1">
	<thead>
		<tr>
			<th width="150">아이디</th>
			<th width="150">비밀번호</th>
			<th width="150">이름</th>
			<th width="500">주소</th>
			<th width="150">전화번호</th>
			<th width="150">수정</th>
			<th width="150">삭제</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items = "${members }" var="m">
			<tr>
			<form action ="memberUpdate.do" method="post">
				<td align = "center"><input id="memberId" name = "memberId" type="text" value="${m.memberId }" readonly></td>
				<td align = "center"><input id="memberPw" name = "memberPw" type="text" value="${m.memberPw }"></td>
				<td align = "center"><input id="memberName" name = "memberName" type="text" value="${m.memberName }"></td>
				<td align = "center"><input id="memberAddr" name = "memberAddr" type="text" value="${m.memberAddr }"></td>
				<td align = "center"><input id="memberTel" name = "memberTel" type="text" value="${m.memberTel }"></td>
				<td align = "center"><input type="submit" value="수정"></td>
				<td align = "center"><button type="button" onclick="deleteM('${m.memberId}', event)">삭제</button></td>
			</form>
			</tr>
		</c:forEach>
	</tbody>
	</table>
	<form id="frmm" action="memberUpdate.do" method="post">
		<input type="hidden" id="memberId" name="memberId" value="">
		<input type="hidden" id="memberPw" name="memberPw" value="">
		<input type="hidden" id="memberName" name="memberName" value="">
		<input type="hidden" id="memberAddr" name="memberAddr" value="">
		<input type="hidden" id="memberTel" name="memberTel" value="">
	</form>
	<c:forEach var="num" begin="${startPage }" end="${endPage }">
	      <a href="managerUpdateMember.do?page=${num }">${num }</a>
    </c:forEach>
	<div>
		<a href="reportList.do?page=1">신고 관리</a>
	</div>
	</div>
	
	<script>
		function update(id, pw, name, addr, tel){
			if(id == 'manager'){
				alert("관리자 계정은 수정 불가능 합니다.");
			} else {
				let frm = document.getElementById("frmm");
				frm.memberId.value = id;
				frm.memberPw.value = pw;
				frm.memberName.value = name;
				frm.memberAddr.value = addr;
				frm.memberTel.value = tel;
				
				frm.submit();
			}
		}
		
		function deleteM(id, event){
			
			if(id == 'manager'){
				alert("관리자 계정은 삭제 불가능 합니다.");
			} else {
				event.target.parentNode.parentNode.remove();
	            
	            let url = "ajaxMemberDelete.do?id=" + id;
	            fetch(url)
	            	.then(response => response.text());
			}
            
		}
		
	</script>
	
</body>
</html>