package co.shop.userpage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.shop.common.Command;
import co.shop.member.service.MemberService;
import co.shop.member.service.MemberVO;
import co.shop.member.service.Impl.MemberServiceImpl;

public class UserInfoUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();
		vo.setMemberId(String.valueOf(session.getAttribute("id")));
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberAddr(request.getParameter("memberAddr"));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberPw(request.getParameter("memberPw"));
		
		ms.memberUpdate(vo);
		
		
		MemberVO voo = new MemberVO();
		voo.setMemberId(String.valueOf(session.getAttribute("id")));
		voo = ms.memberSelect(voo);

		// 회원 정보 수정 후, 필요한 처리 수행
		request.setAttribute("member", voo);
		
	
		return "user/userEditInfo";
		
	}

}
