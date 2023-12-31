package co.shop.userpage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.shop.common.Command;
import co.shop.member.service.MemberService;
import co.shop.member.service.MemberVO;
import co.shop.member.service.Impl.MemberServiceImpl;

public class UserEditInfo implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		// 회원 정보 업데이트를 위해 MemberService 객체 사용
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();
		vo.setMemberId(String.valueOf(session.getAttribute("id")));
		vo = ms.memberSelect(vo);
		if(null != vo.getMemberAddr()) {
			vo.setMemberAddr1(vo.getMemberAddr().substring(1, 6));
			vo.setMemberAddr2(vo.getMemberAddr().substring(7));
			
		}
		// 회원 정보 수정 후, 필요한 처리 수행
		request.setAttribute("member", vo);
		
		
		return "user/userEditInfo";

		
	}
}
