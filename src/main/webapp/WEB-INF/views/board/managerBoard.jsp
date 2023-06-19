<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <style>
    	table {
  			border-collapse: collapse;
  			border-spacing: 0;
		}
		section.notice {
  			padding: 80px 0;
		}

		.page-title {
  			margin-bottom: 60px;
		}
		.page-title h3 {
  			font-size: 28px;
  			color: #333333;
  			font-weight: 400;
  			text-align: center;
		}
		
		#board-search .search-window {
  			padding: 15px 0;
  			background-color: #f9f7f9;
		}
		#board-search .search-window .search-wrap {
  			position: relative;
		/*   padding-right: 124px; */
  			margin: 0 auto;
  			width: 80%;
  			max-width: 564px;
		}
		#board-search .search-window .search-wrap input {
  height: 40px;
  width: 100%;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board-search .search-window .search-wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#board-search .search-window .search-wrap .btn {
  position: absolute;
  right: 0;
  top: 0;
  bottom: 0;
  width: 108px;
  padding: 0;
  font-size: 16px;
}

.board-table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.board-table a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
.board-table a:hover {
  text-decoration: underline;
}
.board-table th {
  text-align: center;
}

.board-table .th-num {
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 200px;
}

.board-table th, .board-table td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th p{
  display: none;
}

.btn {
  display: inline-block;
  padding: 0 30px;
  font-size: 15px;
  font-weight: 400;
  background: transparent;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

/* reset */

* {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
.container {
  width: 1100px;
  margin: 0 auto;
}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}
.board_page {
    margin-top: 30px;
    text-align: center;
    font-size: 0;
}

.board_page a {
    display: inline-block;
    width: 32px;
    height: 32px;
    box-sizing: border-box;
    vertical-align: middle;
    border: 1px solid #ddd;
    border-left: 0;
    line-height: 100%;
    text-decoration: none;
    color: inherit;
}

.board_page a.bt {
    padding-top: 10px;
    font-size: 1.2rem;
    letter-spacing: -1px;
}

.board_page a.num {
    padding-top: 9px;
    font-size: 1.4rem;
}

.board_page a.num.on {
    border-color: #000;
    background: #000;
    color: #fff;
}

.board_page a:first-child {
    border-left: 1px solid #ddd;
}
.bt_wrap {
    margin-top: 30px;
    text-align: center;
    font-size: 0;
}

.bt_wrap a {
    display: inline-block;
    min-width: 80px;
    margin-left: 10px;
    padding: 10px;
    border: 1px solid #000;
    border-radius: 2px;
    font-size: 1.4rem;
    text-decoration: none;
    color: inherit;
}

.bt_wrap a:first-child {
    margin-left: 0;
}

.bt_wrap a.on {
    background: #000;
    color: #fff;
}

    
    </style>
</head>
<body>
<section class="notice">
  <div class="page-title">
        <div class="container">
            <h3>문의게시판</h3>
        </div>
    </div>

  <!-- board list area -->
    <div id="board-list">
        <div class="container">
            <table class="board-table">
                <thead>
                <tr>
                    <th scope="col" class="th-num">번호</th>
                    <th scope="col" class="th-title">제목</th>
                    <th scope="col" class="th-writer">작성자</th>
                    <th scope="col" class="th-date">등록일</th>
                    <th scope="col" class="th-state">답변상태</th>
                </tr>
                </thead>
                <tbody>
            
              <c:forEach items="${boards }" var="b" varStatus="status">
				    <c:choose>
				        <c:when test="${b.memberId == 'manager'}">
				            <tr onmouseover='this.style.background="#9fff80";'
				                onmouseleave='this.style.background="#FFFFFF";' onclick="boardChois(${b.boardId},'${b.memberId }','${b.boardSecret}')">
				                <td>${b.boardId }</td>
				                <td><h5 style="text-decoration: underline;">${b.boardTitle }</h5></td>
				                <td>${b.memberId }</td>
				                <td>${b.boardDate }</td>
				                <td>${b.boardHit }</td>
				            </tr>
				        </c:when>
				        <c:otherwise>
				            <!-- 'manager'가 아닌 회원의 글은 이 부분에서 처리 -->
				        </c:otherwise>
				    </c:choose>
			</c:forEach>
                
            
                
                <c:forEach items="${boards }" var="b">
                	<tr onmouseover='this.style.background="#9fff80";'
						onmouseleave='this.style.background="#FFFFFF";'>
                		<td onclick="boardChois(${b.boardId})">${b.boardId }</td>
                		<td onclick="boardChois(${b.boardId})">${b.boardTitle }</td>
                		<td onclick="boardChois(${b.boardId})">${b.memberId }</td>
                		<td onclick="boardChois(${b.boardId})">${b.boardDate }</td>
                		
                		<c:set var="state" value="${b.boardRepleState }"/>
                		<td>${state }</td>
                		<c:if test="${state eq 'N' }">
                			<td>
  <button type="button" onclick="location.href='managerReple.do?id=${b.boardId}'" style="background-color: #fff; border-radius: 5px; padding: 5px 10px; border: 1px solid #ccc;">
    <i class="fas fa-comment" style="color: #000;"></i> 댓글달기
  </button>
</td>

                		</c:if>
                		<c:if test="${state ne 'N' }">
                			<td>답변완료</td>
                		</c:if>
                	</tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="board_page">
                <a href="managerBoard.do?page=1" class="bt first"><<</a>
                <c:if test="${startPage>1}">
                <a href="managerBoard.do?page=${startPage-1 }" class="bt prev"><</a>
                </c:if>
                
                
                <c:forEach var="num" begin="${startPage }" end="${endPage }">
	                <a href="managerBoard.do?page=${num }">${num }</a>
                </c:forEach>
                
                
                <c:if test="${endPage<realEnd }">
                	<a href="managerBoard.do?page=${endPage+1 }" class="bt next">></a>
                </c:if>
                <a href="managerBoard.do?page=${realEnd }" class="bt last">>></a>
            </div>
            <div class="bt_wrap">
                <a href="managerBoardWrite.do" class="on">등록</a>
                <!--<a href="#">수정</a>-->
            </div>
        </div>
    </div>
     <div>
		<!-- 히든폼 -->
		<form id="frm2" action="boardSelect.do" method="post">
			<input type="hidden" id="boardId" name="boardId">
		</form>
	</div>

</section>
<script type="text/javascript">

	function boardChois(id, memberId, boardSecret){
		//자바스크립트 url호출(get방식)
//		let url = 'noticeSelect.do?noticeId=' + id; ->get방식이므로 post방식에는 안씀
//		location.href=url; ->get방식이므로 post방식에는 안씀
		//location.replace(url); //현재페이지에 덮어씌움 이전페이지로 돌아갈 수 없음	
		//window.open(url);
		let frm = document.getElementById("frm2");	//post방식 (hidden폼이 날아감)
		frm.boardId.value = id;
		
		
		frm.submit();
	
	}
</script>
</body>
</html>