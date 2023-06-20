package co.shop.product.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.member.service.MemberService;
import co.shop.member.service.MemberVO;
import co.shop.member.service.Impl.MemberServiceImpl;
import co.shop.product.service.ProductService;
import co.shop.product.service.ProductVO;
import co.shop.product.service.Impl.ProductServiceImpl;

public class ProductList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//상품 리스트 조회
        ProductService ps = new ProductServiceImpl();
        ProductVO vo = new ProductVO();
        
        vo.setProductKind(request.getParameter("productKind"));
        
        vo.setPage(Integer.valueOf(request.getParameter("page")));
        String str = request.getParameter("state");
        
        if(str != null) {
        	if(str.equals("A")) {
            	vo.setProductPrice(1);
            } else if(str.equals("H")) {
            	vo.setProductPrice(2);
            } else if(str.equals("L")) {
            	vo.setProductPrice(3);
            }
        } else {
        	vo.setProductPrice(0);
        }
        List<ProductVO> products = ps.getProducts(vo);
        request.setAttribute("products", products);
        int maxNum = ps.productSelectMax(vo);
        
        
        int endPage = (int)Math.ceil(Integer.valueOf(request.getParameter("page"))*0.9) * 9	;
		int realEnd = (int)Math.ceil(maxNum/(double)9);
		request.setAttribute("startPage", 1);
		if(realEnd < endPage) {
			endPage = realEnd;
		}
		request.setAttribute("endPage", endPage);
		request.setAttribute("realEnd", realEnd);
		
		
        return "product/productList";
        
        
        

		
		
	}
}
