package co.shop.product.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.product.service.ProductService;
import co.shop.product.service.ProductVO;
import co.shop.product.service.Impl.ProductServiceImpl;

public class SearchProduct implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String productName = request.getParameter("product_name");
		ProductService ps = new ProductServiceImpl();
		List<ProductVO> searchResults = new ArrayList<>();
		searchResults = ps.searchProductsName(productName);
		request.setAttribute("searchResults", searchResults);
		return "product/searchProduct";

	}

}
