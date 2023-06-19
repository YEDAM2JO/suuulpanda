package co.shop.userpage.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.shop.common.Command;
import co.shop.order.service.OrderService;
import co.shop.order.service.OrderVO;
import co.shop.order.service.OrderVO2;
import co.shop.order.service.Impl.OrderServiceImpl;

public class UserOrderList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		OrderService os = new OrderServiceImpl();
		OrderVO2 vo = new OrderVO2();
		HttpSession session = request.getSession();
		vo.setMemberId(String.valueOf(session.getAttribute("id")));
		List<OrderVO2> orders = os.orderSelectList2(vo);
		
		request.setAttribute("orders", orders);
		return "user/userorderlist";
	}

}
