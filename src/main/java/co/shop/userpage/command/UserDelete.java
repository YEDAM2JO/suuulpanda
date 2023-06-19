package co.shop.userpage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.member.service.MemberService;
import co.shop.member.service.MemberVO;
import co.shop.member.service.Impl.MemberServiceImpl;

public class UserDelete implements Command {

    @Override
    public String exec(HttpServletRequest request, HttpServletResponse response) {
        String viewPage = "main.do"; // 회원 탈퇴 완료 후 이동할 페이지

        String memberPw = request.getParameter("memberPw"); // 사용자가 입력한 비밀번호
        String memberId = (String) request.getSession().getAttribute("id"); // 회원의 아이디

        MemberService memberService = new MemberServiceImpl();
        MemberVO member = new MemberVO();
        member.setMemberId(memberId);
        member.setMemberPw(memberPw);

        int result = memberService.memberDelete(member); // 회원 삭제를 위한 메소드 호출

        if (result > 0) {
            // 회원 삭제 성공
            request.getSession().invalidate(); // 세션 무효화
            request.setAttribute("message", "회원탈퇴가 되었습니다."); // 성공 메시지 설정
        } else {
            // 회원 삭제 실패
            viewPage = "userpage.do"; // 회원 탈퇴 실패 시 이동할 페이지
            request.setAttribute("message", "회원탈퇴가 실패되었습니다."); // 실패 메시지 설정
        }

        return "member/memberMessage"; // 회원 탈퇴 후 메시지를 출력할 페이지 반환
    }
}
