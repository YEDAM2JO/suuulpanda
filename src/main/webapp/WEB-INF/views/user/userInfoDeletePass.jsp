<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">
    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
</head>
    <title>회원탈퇴</title>
    <tiles:insertAttribute name="header"/>

<body>
    <<div class="container">
	 <form method="post" action="deleteProc.jsp" name="delete" onsubmit="return checkPass()">
	  <table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #ddddddd">
	   <thead>
	    <tr>
	     <th colspan="3"><h4>회원 정보 확인</h4></th>
	    </tr>
	   </thead>
	    <tbody>
	   
		 <tr>
	      <td style="width:150px;"><h5>비밀번호</h5></td>
	      <td colspan="3"><input class="form-control" id="userPassword1" type="password" name="pass" maxlength="20" placeholder="비밀번호를 입력하세요."></td>
	     </tr>
	   	<tr>
			<td colspan="2" align="center">
			<input class="btn btn-primary" type="button" value="회원탈퇴" onClick="inputCheck()"/>&nbsp;&nbsp;
			<a href="userpage.do"><input class="btn btn-primary" type="button" value="취소"></a>
			</td>
			<td style="text-align: left;" colspan="3"><h5 style="color: red;" id="passwordCheckMessage"></h5>   
		</tr>				
  			</tbody>
  		</table>
	</form>
  </div>
</body>
<tiles:insertAttribute name="footer"/>
</html>
