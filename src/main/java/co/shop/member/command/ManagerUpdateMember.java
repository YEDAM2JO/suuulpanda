package co.shop.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.member.service.MemberService;
import co.shop.member.service.MemberVO;
import co.shop.member.service.Impl.MemberServiceImpl;

public class ManagerUpdateMember implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		List<MemberVO> members = new ArrayList<>();
		members = ms.memberSelectList();
		
		request.setAttribute("members", members);

		return "member/memberList";
	}

}
