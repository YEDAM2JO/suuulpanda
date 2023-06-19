package co.shop.recommend.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.product.service.ProductService;
import co.shop.product.service.ProductVO;
import co.shop.product.service.Impl.ProductServiceImpl;

public class RecommendResult implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String productKind = request.getParameter("option1");
		String productTaste = request.getParameter("option2");
		String productSparkling = request.getParameter("option3");
		
		
		ProductService ps = new ProductServiceImpl();
		List<ProductVO> products = new ArrayList<>();
		products = ps.recommendResult(productKind, productTaste, productSparkling);
		
		request.setAttribute("products", products);
		return "recommend/recommendResult";
	}

}
