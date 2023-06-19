package co.shop.order.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.shop.common.Command;
import co.shop.order.service.OrderService;
import co.shop.order.service.OrderVO;
import co.shop.order.service.Impl.OrderServiceImpl;
import co.shop.orderDetail.service.OrderDetailService;
import co.shop.orderDetail.service.OrderDetailVO;
import co.shop.orderDetail.service.Impl.OrderDetailServiceImpl;

public class BuyProduct implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		OrderService os = new OrderServiceImpl();
		OrderVO vo = new OrderVO();
		HttpSession session = request.getSession();
		vo.setMemberId(String.valueOf(session.getAttribute("id")));
		vo.setOrderTotalPrice(Integer.valueOf(request.getParameter("totalPrice2")));
		os.orderInsert(vo);
		
		OrderDetailService ods = new OrderDetailServiceImpl();
		OrderDetailVO voo = new OrderDetailVO();
		voo.setProductCount(Integer.valueOf(request.getParameter("productCount2")));
		voo.setProductName(request.getParameter("productName2"));
		int max = os.orderSelect();
		voo.setOrderId(max);
		
		ods.orderDetailInsert(voo);
		return "cart/buyPage";
	}

}
