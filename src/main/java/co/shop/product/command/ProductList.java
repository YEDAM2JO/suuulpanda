package co.shop.product.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.product.service.ProductService;
import co.shop.product.service.ProductVO;
import co.shop.product.service.Impl.ProductServiceImpl;

public class ProductList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
        //상품 리스트 조회
        ProductService ps = new ProductServiceImpl();
        String productKind = request.getParameter("productKind");
        
        if (productKind == null || productKind.isEmpty()) {
            productKind = null; // '전체상품' -> productKind null 설정
        }

        List<ProductVO> products = ps.getProducts(productKind);

        request.setAttribute("products", products);
        return "product/productList";
	}
}
