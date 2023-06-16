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

    <!-- board seach area -->
    <div id="board-search">
        <div class="container">
            <div class="search-window">
                <form id="frm" method="get">
                    <div class="search-wrap">
                        <label for="search" class="blind">내용 검색</label>
                        <input id="search" type="search" name="search" placeholder="검색어를 입력해주세요.">
                        <button type="button" onclick="searchTarget()" class="btn btn-dark">검색</button>
                    </div>
                </form>
            </div>
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
                    <th scope="col" class="th-view">조회수</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>2</td>
                    <th>
                      <a href="#!">[공지사항] 개인정보 처리방침 변경안내처리방침</a>
                      <p>테스트</p>
                    </th>
                    <td>관리자</td>
                    <td>2017.07.13</td>
                    <td>1021</td>
                </tr>
                <tr>
                    <td>1</td>
                    <th><a href="#!">공지사항 안내입니다. 이용해주셔서 감사합니다</a></th>
                    <td>관리자</td>
                    <td>2017.06.15</td>
                    <td>764</td>
                </tr>
                <c:forEach items="${boards }" var="b">
                	<tr onmouseover='this.style.background="#9fff80";'
						onmouseleave='this.style.background="#FFFFFF";' onclick="boardChois(${b.boardId},'${b.memberId }','${b.boardSecret}')">
                		<td>${b.boardId }</td>
                		<td>${b.boardTitle }</td>
                		<td>${b.memberId }</td>
                		<td>${b.boardDate }</td>
                		<td>${b.boardHit }</td>
                	</tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="board_page">
            	<c:if test="${startPage>1}">
                <a href="boardSearch.do?page=1&searchWord=${searchWord }" class="bt first"><<</a>
                </c:if>
                <c:if test="${startPage>1}">
                <a href="boardSearch.do?page=${startPage-1 }&searchWord=${searchWord }" class="bt prev"><</a>
                </c:if>
                
                
                <c:forEach var="num" begin="${startPage }" end="${endPage }">
	                <a href="boardSearch.do?page=${num }&searchWord=${searchWord }">${num }</a>
                </c:forEach>
                
                
                <c:if test="${endPage<realEnd }">
                	<a href="boardSearch.do?page=${endPage+1 }&searchWord=${searchWord }" class="bt next">></a>
                </c:if>
                <c:if test="${realEnd>0 }">
                <a href="boardSearch.do?page=${realEnd }&searchWord=${searchWord }" class="bt last">>></a>
                </c:if>
            </div>
            <div class="bt_wrap">
                <a href="boardWrite.do" class="on">등록</a>
                <!--<a href="#">수정</a>-->
            </div>
        </div>
    </div>
    <div>
		<!-- 히든폼 -->
		<form id="frm2" action="boardSelect.do" method="post">
			<input type="hidden" id="boardId" name="boardId">
			<input type="hidden" id="boardSecret" name="boardSecret">
		</form>
	</div>

</section>
<script type="text/javascript">
	function searchTarget(){
		var word = document.getElementById("search").value;
		
		location.href="boardSearch.do?page=1&searchWord=" + word;
	}
	
	function boardChois(id){
		//자바스크립트 url호출(get방식)
//		let url = 'noticeSelect.do?noticeId=' + id; ->get방식이므로 post방식에는 안씀
//		location.href=url; ->get방식이므로 post방식에는 안씀
		//location.replace(url); //현재페이지에 덮어씌움 이전페이지로 돌아갈 수 없음	
		//window.open(url);
		let frm = document.getElementById("frm2");	//post방식 (hidden폼이 날아감)
		frm.boardId.value = id;
		
		
		if(boardSecret=='Y'){
			if(memberId == '${id}'){
				
				frm.submit();
			} else {
				console.log('${id}');
				alert("비밀글입니다.");
			}
		} else {
			frm.submit();
		}
	}
</script>

</body>
</html>