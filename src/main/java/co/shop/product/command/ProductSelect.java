package co.shop.product.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.product.service.ProductService;
import co.shop.product.service.ProductVO;
import co.shop.product.service.Impl.ProductServiceImpl;
import co.shop.review.service.ReviewService;
import co.shop.review.service.ReviewVO;
import co.shop.review.service.Impl.ReviewServiceImpl;

public class ProductSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//상품 상세조회
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductId(request.getParameter("productId"));
		vo = ps.productSelect(vo);
		request.setAttribute("product", vo);
		
		//리뷰출력용
		ReviewService rs = new ReviewServiceImpl();
		ReviewVO voo = new ReviewVO();
		voo.setProductId(request.getParameter("productId"));
		List<ReviewVO> reviews = rs.reviewSelectList(voo);
	
		request.setAttribute("reviews",	reviews);
		return "product/productSelect";
	}

}
