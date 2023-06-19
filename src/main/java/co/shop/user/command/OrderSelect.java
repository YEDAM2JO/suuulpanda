package co.shop.user.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.orderDetail.service.OrderDetailService;
import co.shop.orderDetail.service.OrderDetailVO;
import co.shop.orderDetail.service.Impl.OrderDetailServiceImpl;

public class OrderSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		OrderDetailService ods = new OrderDetailServiceImpl();
		OrderDetailVO vo = new OrderDetailVO();
		vo.setOrderId(Integer.valueOf(request.getParameter("orderId")));
		List<OrderDetailVO> orders = ods.orderDetailSelectList(vo);
		
		request.setAttribute("order", orders);
		
		return "user/orderSelect";
	}

}
