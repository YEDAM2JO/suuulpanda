<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <script>
        function inputCheck() {
            document.delete.submit();
        }
    </script>
    
</head>
    <title>회원탈퇴</title>

<body>
    <<div class="container">
    <!--비번 맞게 치면 회원 탈퇴가 이루어지는 페이지로 이동  -->
	 <form method="post" action="userDelete.do" name="delete" onsubmit="return checkPass()">
	  <table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #ddddddd">
	   <thead>
	    <tr>
	     <th colspan="3"><h4>회원 정보 확인</h4></th>
	    </tr>
	   </thead>
	    <tbody>
	   
		 <tr>
	      <td style="width:150px;"><h5>비밀번호</h5></td>
	      <td colspan="3"><input class="form-control" id="userPassword1" type="password" name="memberPw" maxlength="20" placeholder="비밀번호를 입력하세요."></td>
	     </tr>
	   	<tr>
			<td colspan="2" align="center">
			<input class="btn btn-primary" type="submit" value="회원탈퇴" onClick="inputCheck()"/>&nbsp;&nbsp;
			<a href="userpage.do"><input class="btn btn-primary" type="button" value="취소"></a>
			</td>
			<td style="text-align: left;" colspan="3"><h5 style="color: red;" id="passwordCheckMessage"></h5>   
		</tr>				
  			</tbody>
  		</table>
	</form>
  </div>
</body>
</html>
