package co.shop.product.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.product.service.ProductService;
import co.shop.product.service.ProductVO;
import co.shop.product.service.Impl.ProductServiceImpl;

public class ProductList1 implements Command {

		@Override
		public String exec(HttpServletRequest request, HttpServletResponse response) {
			//전체 상품 리스트
			ProductService ps = new ProductServiceImpl();
			List<ProductVO> products = new ArrayList<>();
			products = ps.getAllProducts1();
			
			request.setAttribute("products", products);
			return "product/productList1";
		}
	}
