package co.shop.orderDetail.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.shop.cart.service.CartService;
import co.shop.cart.service.CartVO;
import co.shop.cart.serviceImpl.CartServiceImpl;
import co.shop.common.Command;
import co.shop.order.service.OrderService;
import co.shop.order.service.Impl.OrderServiceImpl;
import co.shop.orderDetail.service.OrderDetailService;
import co.shop.orderDetail.service.OrderDetailVO;
import co.shop.orderDetail.service.Impl.OrderDetailServiceImpl;

public class AjaxOrderDetailInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CartService cs = new CartServiceImpl();
		CartVO vo = new CartVO();
		HttpSession session = request.getSession();
		vo.setMemberId(String.valueOf(session.getAttribute("id")));
		//카트 목록 가져오기
		List<CartVO> carts = cs.cartSelectList(vo);
		
		OrderService os = new OrderServiceImpl();
		int max = os.orderSelect();
		
		OrderDetailService ods = new OrderDetailServiceImpl();
		
		//카트에 있는 product_name과 product_count 가져오기
		for (int i = 0; i < carts.size(); i++) {
            OrderDetailVO voo = new OrderDetailVO();
            voo.setOrderId(max);
            voo.setProductName(carts.get(i).getProductName());
            voo.setProductCount(carts.get(i).getProductCount());
            ods.orderDetailInsert(voo);
        }
		
		String str = "Ajax:a";
		return str;
	}

}
