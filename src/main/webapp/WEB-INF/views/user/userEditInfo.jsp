<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
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

<title>회원 정보 수정</title>

<style>
    table {
        width: 70%;
        margin: auto;
    }
    
    th, td {
        padding: 10px;
        text-align: center;
    }
    
    .button-container {
        margin-top: 20px;
        text-align: center;
    }
    
    .button-container button {
        padding: 10px 20px;
        font-size: 16px;
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
        margin-right: 10px;
    }
    
    .button-container button:hover {
        background-color: #45a049;
    }
</style>

</head>
<body>

    <div align="center">
    
        <br>
        <h3>회원 정보 조회</h3>
        <br>
        <form id="frm" action="memberUpdate.do" method="post">
    
        <table border="1">
            <tr>
                <th>항목</th>
                <th>정보</th>
            </tr>
            <tr>
                <td>이름</td>
                <td align="center">
                    <input type="text" id="memberName" name="memberName" value="${member.memberName}">
                </td>
            </tr>
            <tr>
            <!-- 주소 찾기해서 주소/상세주소 2줄로 나눠서 정보 넣는 건 어떻게 하지 -->
                <td>주소</td>
                <td align="center">
                    <input type="text" id="memberAddr" name="memberAddr" value="${member.memberAddr}"> 
                </td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td align="center">
                    <input type="text" id="memberTel" name="memberTel" value="${member.memberTel}">
                </td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td align="center">
                    <input type="text" id="memberPw" name="memberPw" value="${member.memberPw}">
                </td>
            </tr>
        </table>
        <br>
    
        <div>
            <input type="hidden" name="memberId" value="${member.memberId}">
        </div>
            
        <div>
    <input type="submit" value="수정" class="btn btn-primary">&nbsp;&nbsp;
    <button type="button" onclick="location.href='userpage.do'" class="btn btn-secondary">목록</button>
</div>
    <br>
    <br>
        </form>
    </div>

</body>
</html>
