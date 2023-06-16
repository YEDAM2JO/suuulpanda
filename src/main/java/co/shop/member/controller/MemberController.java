package co.shop.member.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        String pathInfo = request.getPathInfo(); // 요청 URL에서 경로 정보 추출
        if ("/memberDelete.do".equals(pathInfo)) {
            memberDelete(request, response);
        } else {
            // 처리할 다른 경로가 있다면 추가
        }
    }
    private void memberDelete(HttpServletRequest request, HttpServletResponse response) {
        // 회원 삭제 로직 구현
    }
}