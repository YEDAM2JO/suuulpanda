<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">

    <link rel="stylesheet" href="assets/css/cart.css">
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        body {
            background-color: #ffffff;
            color: #000000;
        }

        .text-center {
            text-align: center;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .btn {
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 4px;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            color: #ffffff;
        }

        .btn-primary:hover {
            background-color: #0069d9;
            color: #ffffff;
        }

        .btn-secondary {
            background-color: #6c757d;
            border: none;
            color: #ffffff;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
            color: #ffffff;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="text-center">
        <br>
            <h1>공지사항 등록</h1>
        <br>
        </div>
        <div id="ls" class="text-center">
            <form id="frm" action="boardInsert.do" method="post">
                <div>
                    <table class="table">
                        <tr>
                            <th width="150">작성일자</th>
                            <td width="150">
                                <input type="date" id="boardDate" name="boardDate" readOnly class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td colspan="3">
                                <input type="text" id="boardTitle" name="boardTitle" size="70" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td colspan="3">
                                <textarea rows="10" cols="=50" id="boardContent" name="boardContent" placeholder="내용을 입력해주세요." required class="form-control"></textarea>
                            </td>
                        </tr>
                    </table>
                </div>
                <br>

                <div>
                    <input type="hidden" name="boardS" id="boardS">
                </div>
                <div>
                    <div align="left">
                    <input type='checkbox' name="boardSecret" id="boardSecret" onclick="settingSecret()" value="N" class="form-check-input">
                    
                    </div>
                    <div align="right">
                    <input type="submit" value="등록" class="btn btn-primary">&nbsp;&nbsp;
                    <input type="reset" value="취소" class="btn btn-secondary">&nbsp;&nbsp;
                    <input type="button" value="목록" onclick="location.href='boardList.do?page=1'" class="btn btn-secondary">
                    </div>
                    <br><br>
                </div>
            </form>
        </div>
    </div>

   
</body>
</html>
