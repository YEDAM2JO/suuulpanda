package co.shop.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.product.service.ProductService;
import co.shop.product.service.ProductVO;
import co.shop.product.service.Impl.ProductServiceImpl;

public class ProductDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps= new ProductServiceImpl();
		ProductVO vo= new ProductVO();
		
		vo.setProductId(request.getParameter("productId"));
		int p= ps.productDelete(vo);
		if(p !=0) {
			request.setAttribute("message", "정상적으로 삭제 되었습니다.");
		}else {
			request.setAttribute("message", "게시글 삭제 실패하였습니다.");
		}

		return "productList1.do";
	}

}
