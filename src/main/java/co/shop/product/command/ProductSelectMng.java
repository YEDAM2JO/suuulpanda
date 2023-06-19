package co.shop.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.product.service.ProductService;
import co.shop.product.service.ProductVO;
import co.shop.product.service.Impl.ProductServiceImpl;

public class ProductSelectMng implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 제품 정보 상세보기
		
		
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductId(request.getParameter("productId"));
		vo = ps.productSelect(vo);  // 쿼리문을 실행해서 vo에 담음 -> return
		request.setAttribute("product", vo);
		return "product/productSelectMng";
	}

}
