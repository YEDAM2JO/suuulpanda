package co.shop.user.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.orderDetail.service.OrderDetailService;
import co.shop.orderDetail.service.OrderDetailVO2;
import co.shop.orderDetail.service.Impl.OrderDetailServiceImpl;

public class OrderSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		OrderDetailService ods = new OrderDetailServiceImpl();
		OrderDetailVO2 vo = new OrderDetailVO2();
		vo.setOrderId(request.getParameter("orderId"));
		System.out.println(request.getParameter("orderId"));
		List<OrderDetailVO2> orders = ods.orderDetailSelectList2(vo);
		for(OrderDetailVO2 vooooo : orders) {
			System.out.println(vooooo);
		}
		
		request.setAttribute("order", orders);
		
		return "user/orderSelect";
	}

}
