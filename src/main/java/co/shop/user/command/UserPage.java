package co.shop.user.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.shop.common.Command;
import co.shop.order.service.OrderService;
import co.shop.order.service.OrderVO2;
import co.shop.order.service.Impl.OrderServiceImpl;

public class UserPage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		OrderService os = new OrderServiceImpl();
		OrderVO2 vo = new OrderVO2();
		HttpSession session = request.getSession();
		vo.setMemberId(String.valueOf(session.getAttribute("id")));
		
		int orderNum = os.orderMemberNumber2(vo);
		int orderMoney = os.orderMemberMoney2(vo);
		
		request.setAttribute("orderNum", orderNum);
		request.setAttribute("orderMoney", orderMoney);
		

		
		return "mypage/userpage";
	}

}
