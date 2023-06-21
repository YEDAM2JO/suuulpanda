package co.shop.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.shop.common.Command;
import co.shop.product.service.ProductService;
import co.shop.product.service.ProductVO;
import co.shop.product.service.Impl.ProductServiceImpl;
import co.shop.review.service.ReviewService;
import co.shop.review.service.ReviewVO;
import co.shop.review.service.Impl.ReviewServiceImpl;

public class ReviewInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductName(request.getParameter("productName"));
		String productId = ps.productIdSelect(vo);
		ReviewVO voo = new ReviewVO();
		voo.setProductId(productId);
		HttpSession session = request.getSession();
		voo.setMemberId(String.valueOf(session.getAttribute("id")));
		voo.setReviewScore(Integer.valueOf(request.getParameter("reviewScore")));
		voo.setReviewContent(request.getParameter("reviewContent"));
		
		ReviewService rs = new ReviewServiceImpl();
		rs.reviewInsert(voo);
		
		String orderId = request.getParameter("orderId");
		
		return "orderSelect.do?orderId=" + orderId;
	}

}
