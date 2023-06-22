package co.shop.product.command;


import java.util.ArrayList;
import java.util.List;

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
		
		HttpSession session = request.getSession();
		List<ProductVO> recentProducts = (List<ProductVO>) session.getAttribute("recentProducts");
		
		
		
		if(recentProducts != null && recentProducts.size() != 0) {
			if(recentProducts.size()>=5) {
				
				boolean flag = true;
				for(int i = 0; i<recentProducts.size(); i++) {
					if(recentProducts.get(i).getProductId().equals(vo.getProductId())){
						flag = false;
					} 
				}
				if(flag) {
					recentProducts.remove(0);
					recentProducts.add(vo);
					session.setAttribute("recentProducts", recentProducts);
					
					request.setAttribute("recentProduct", recentProducts);
				} else {
					session.setAttribute("recentProducts", recentProducts);
					
					request.setAttribute("recentProduct", recentProducts);
				}
				
			}else {
				boolean flag = true;
				for(int i = 0; i<recentProducts.size(); i++) {
					if(recentProducts.get(i).getProductId().equals(vo.getProductId())){
						flag = false;
					} 
				}
				if(flag) {
					recentProducts.add(vo);
					session.setAttribute("recentProducts", recentProducts);
					
					request.setAttribute("recentProduct", recentProducts);
				} else {
					session.setAttribute("recentProducts", recentProducts);
					
					request.setAttribute("recentProduct", recentProducts);
				}
				
			}
			
			
		} else {
			List<ProductVO> recentProducts2 = new ArrayList<>();
			recentProducts2.add(vo);
			session.setAttribute("recentProducts", recentProducts2);
			
			request.setAttribute("recentProduct", recentProducts2);
		}
		
		
	
		
		request.setAttribute("reviews",	reviews);
		return "product/productSelect";
	}

}
