package co.shop.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.review.service.ReviewService;
import co.shop.review.service.ReviewVO;
import co.shop.review.service.Impl.ReviewServiceImpl;

public class AjaxDeleteReview implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReviewService rs = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		vo.setReviewId(Integer.valueOf(request.getParameter("id")));
		rs.reviewDelete(vo);
		
		String str = "Ajax:a";
		return str;
	}

}
