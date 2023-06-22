package co.shop.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.shop.common.Command;
import co.shop.product.service.ProductVO;

public class Login implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		List<ProductVO> procuts = new ArrayList<ProductVO>();
		
		HttpSession session = request.getSession();
		session.setAttribute("recentProducts", procuts);
		
		return "member/Login";
	}

}
