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
	#tableStyle {
  color: #666;
  font: 14px/24px "Open Sans", "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", Sans-Serif;
}
#tableStyle table {
  border-collapse: separate;
  border-spacing: 0;
  width: 70%;
}
#tableStyle th,
#tableStyle td {
  padding: 6px 15px;
}
#tableStyle th {
  background: #42444e;
  color: #fff;
  text-align: left;
}
#tableStyle tr:first-child th:first-child {
  border-top-left-radius: 6px;
}
#tableStyle tr:first-child th:last-child {
  border-top-right-radius: 6px;
}
#tableStyle td {
  border-right: 1px solid #c6c9cc;
  border-bottom: 1px solid #c6c9cc;
}
#tableStyle td:first-child {
  border-left: 1px solid #c6c9cc;
}
#tableStyle tr:nth-child(even) #tableStyle td {
  background: #eaeaed;
}
#tableStyle tr:last-child #tableStyle td:first-child {
  border-bottom-left-radius: 6px;
}
#tableStyle tr:last-child #tableStyle td:last-child {
  border-bottom-right-radius: 6px;
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
	<table border="1">
	<thead>
		<tr>
			<th width="30">아이디</th>
			<th width="30">비밀번호</th>
			<th width="30">이름</th>
			<th width="300">주소</th>
			<th width="30">전화번호</th>
			<th width="30">수정</th>
			<th width="50">삭제</th>
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