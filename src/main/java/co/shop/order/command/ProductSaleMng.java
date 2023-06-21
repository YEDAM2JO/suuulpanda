package co.shop.order.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.order.service.OrderService;
import co.shop.order.service.OrderVO2;
import co.shop.order.service.Impl.OrderServiceImpl;


public class ProductSaleMng implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		OrderService os = new OrderServiceImpl();
		List<OrderVO2> orders = new ArrayList<>();
		orders = os.getAllSalesMng();
		
		request.setAttribute("orders", orders);
		return "product/productSaleMng";
	}

}
