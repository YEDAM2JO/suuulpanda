package co.shop.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.product.service.ProductService;
import co.shop.product.service.ProductVO;
import co.shop.product.service.Impl.ProductServiceImpl;

public class ProductEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductId(request.getParameter("productId"));
		vo = ps.productSelect(vo);
		request.setAttribute("product", vo);
	
		
		return "product/productEdit";
	}

}
