<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 목록 보기</title>

<style>
	input[type=text]{
		display: inline-block;
		
		border: none;
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
	
</head>
<body>
	<div align = "center"><h1>회원 목록 보기</h1></div>
	<div align = "center" id="tableStyle">
	<table border="1" class="table">
	<thead>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>주소</th>
			<th>전화번호</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items = "${members }" var="m">
			<form action ="managerUpdateMember.do?page=1" method="post">
			<tr>
				<td align = "center"><input id="memberId" name = "memberId" type="text" value="${m.memberId }" readonly></td>
				<td align = "center"><input id="memberPw" name = "memberPw" type="text" value="${m.memberPw }"></td>
				<td align = "center"><input id="memberName" name = "memberName" type="text" value="${m.memberName }"></td>
				<td align = "center"><input id="memberAddr" name = "memberAddr" type="text" value="${m.memberAddr }"></td>
				<td align = "center"><input id="memberTel" name = "memberTel" type="text" value="${m.memberTel }"></td>
				<td align = "center"><input type="submit" value="수정"></td>
				<td align = "center"><button class="btn btn-success" type="button" onclick="deleteM('${m.memberId}', event)">삭제</button></td>
			</tr>
			</form>
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
	<div class="page-wrap">
		<ul class="page-nation">
	<c:forEach var="num" begin="${startPage }" end="${endPage }">
	     <li><a href="managerUpdateMember.do?page=${num }">${num }</a></li>
    </c:forEach>
     	</ul>
     </div>
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
