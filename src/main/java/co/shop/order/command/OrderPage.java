package co.shop.order.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.shop.cart.service.CartService;
import co.shop.cart.service.CartVO;
import co.shop.cart.serviceImpl.CartServiceImpl;
import co.shop.common.Command;

public class OrderPage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		return "cart/buyPage";
	}

}
