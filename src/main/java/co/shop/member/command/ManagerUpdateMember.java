package co.shop.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.board.service.BoardVO;
import co.shop.common.Command;
import co.shop.member.service.MemberService;
import co.shop.member.service.MemberVO;
import co.shop.member.service.Impl.MemberServiceImpl;

public class ManagerUpdateMember implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		
		
		
		
		
		
		MemberVO vo = new MemberVO();
		
		
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPw(request.getParameter("memberPw"));
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberAddr(request.getParameter("memberAddr"));
		vo.setMemberTel(request.getParameter("memberTel"));
		int i = ms.memberUpdate(vo);
		
		
		
		vo.setPage(Integer.valueOf(request.getParameter("page")));
		List<MemberVO> members = ms.memberSelectList(vo);
		
		int maxNum = ms.memberSelectMax();
		
		int endPage = (int)Math.ceil(Integer.valueOf(request.getParameter("page"))*0.2) * 5	;
		int realEnd = (int)Math.ceil(maxNum/(double)5);
		
		
		
		request.setAttribute("startPage", endPage-5+1);
		if(realEnd < endPage) {
			endPage = realEnd;
		}
		request.setAttribute("endPage", endPage);
		request.setAttribute("realEnd", realEnd);
		request.setAttribute("members", members);
		

		return "member/memberList";
	}

}
