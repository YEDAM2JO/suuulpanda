package co.shop.order.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.shop.cart.service.CartService;
import co.shop.cart.service.CartVO;
import co.shop.cart.serviceImpl.CartServiceImpl;
import co.shop.common.Command;
import co.shop.order.service.OrderService;
import co.shop.order.service.OrderVO;
import co.shop.order.service.Impl.OrderServiceImpl;
import co.shop.orderDetail.service.OrderDetailService;
import co.shop.orderDetail.service.OrderDetailVO;
import co.shop.orderDetail.service.Impl.OrderDetailServiceImpl;

public class AjaxOrderInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		OrderService os = new OrderServiceImpl();
		OrderVO vo = new OrderVO();
		HttpSession session = request.getSession();
		vo.setMemberId(String.valueOf(session.getAttribute("id")));
		vo.setOrderTotalPrice(Integer.valueOf(request.getParameter("sum")));
		os.orderInsert(vo);
		
		CartService cs = new CartServiceImpl();
		CartVO voo = new CartVO();
		voo.setMemberId(String.valueOf(session.getAttribute("id")));
		//카트 목록 가져오기
		List<CartVO> carts = cs.cartSelectList(voo);
		
		
		int max = os.orderSelect();
		
		OrderDetailService ods = new OrderDetailServiceImpl();
		
		int f = 0;
		//카트에 있는 product_name과 product_count 가져오기
		for (CartVO cart: carts) {
            OrderDetailVO vooo = new OrderDetailVO();
            vooo.setOrderId(max);
            vooo.setProductName(cart.getProductName());
            vooo.setProductCount(cart.getProductCount());
            f = ods.orderDetailInsert(vooo);
           
        }
		
		
		
		
		cs.cartMemberDelete(voo);
		
		
		
		String str = "Ajax:a";
		return str;
	}

}
