<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


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
        <h3>회원정보 수정</h3>
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
                <td>전화번호</td>
                <td align="center">
                    <input type="text" id="memberTel" name="memberTel" value="${member.memberTel}">
                </td>
            </tr>
            
            <tr>
            
                <td>주소</td>
              	<td>
					<i class='bx bxs-addr'></i>
					<input type="text" id="sample6_postcode" name="sample6_postcode" placeholder="우편번호" value="${member.memberAddr1 }" style="margin-bottom: 5px;">
					
					<span class='button'>
					<button type="button" id="checkId" value="No" onclick="sample6_execDaumPostcode()" style="margin-bottom: 5px;">우편번호찾기</button>
					</span><br> 
					
					<input type="text" id="sample6_address" name="sample6_address" placeholder="주소" value="${member.memberAddr2 }" style="margin-bottom: 5px;"><br>
					<input type="text" id="sample6_detailAddress" name="sample6_detailAddress" placeholder="상세주소" style="margin-bottom: 5px;"><br>
					<input type="text" id="sample6_extraAddress" name="sample6_extraAddress" placeholder="참고항목" style="margin-bottom: 5px;"></td>
				

            </tr>
            
            <tr>
			    <td>비밀번호</td>
			    <td align="center">
			        <input type="password" id="memberPw" name="memberPw">
			    </td>
			</tr>
			<tr>
			    <td>비밀번호 확인</td>
			    <td align="center">
			        <input type="password" id="memberPw">
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
    
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수
                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
</body>
</html>
