package co.shop.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.board.command.AjaxSetReple;
import co.shop.board.command.BoardDelete;
import co.shop.board.command.BoardEdit;
import co.shop.board.command.BoardInsert;
import co.shop.board.command.BoardList;
import co.shop.board.command.BoardSearch;
import co.shop.board.command.BoardSelect;
import co.shop.board.command.BoardUpdate;
import co.shop.board.command.BoardWrite;
import co.shop.board.command.ManagerBoard;
import co.shop.board.command.ManagerBoardWrite;
import co.shop.board.command.ManagerReple;
import co.shop.cart.command.AjaxCartDelete;
import co.shop.cart.command.AjaxCountMinus;
import co.shop.cart.command.AjaxCountPlus;
import co.shop.cart.command.CartInsert;
import co.shop.cart.command.CartList;
import co.shop.cart.command.cart;
import co.shop.common.Command;
import co.shop.kakaopay.command.Kakaopay;
import co.shop.kakaopay.command.KakaopayApproval;
import co.shop.kakaopay.command.KakaopayMessage;
import co.shop.main.command.MainCommand;
import co.shop.member.command.AjaxCheckId;
import co.shop.member.command.AjaxMemberDelete;
import co.shop.member.command.MemberUpdate;
import co.shop.order.command.AjaxOrderInsert;
import co.shop.order.command.OrderPage;
import co.shop.order.command.ProductSaleMng;
import co.shop.orderDetail.command.AjaxOrderDetailInsert;
import co.shop.payment.command.DepositMessage;
import co.shop.payment.command.paymentOrder;
import co.shop.member.command.AjaxSearchPw;

import co.shop.member.command.ForgetPw;
import co.shop.member.command.Login;
import co.shop.member.command.Logout;
import co.shop.member.command.ManagerUpdateMember;
import co.shop.member.command.MemberInsert;
import co.shop.member.command.MemberLogin;

import co.shop.product.command.ProductModify;
import co.shop.product.command.ProductSaleList;
import co.shop.product.command.ProductSelect;

import co.shop.product.command.ProductSelectMng;




import co.shop.product.command.ProductUpdate;
import co.shop.product.command.SearchProduct;
import co.shop.recommend.command.Recommend;
import co.shop.recommend.command.RecommendResult;
import co.shop.reple.command.AjaxRepleDelete;
import co.shop.review.command.AjaxDeleteReview;
import co.shop.review.command.ReviewInsert;
import co.shop.report.command.ReportAction;
import co.shop.report.command.ReportList;
import co.shop.report.command.ReportSelect;
import co.shop.member.command.MemberUpdate;
import co.shop.product.command.Product;
import co.shop.product.command.ProductDelete;
import co.shop.product.command.ProductEdit;
import co.shop.product.command.ProductInsert;
import co.shop.product.command.ProductInsertForm;
import co.shop.product.command.ProductList;

import co.shop.product.command.ProductListMng;
import co.shop.product.command.ProductModify;
import co.shop.product.command.ProductSelect;
import co.shop.product.command.SearchProduct;
import co.shop.reple.command.AjaxRepleDelete;
import co.shop.social.command.AjaxCheckAge;
import co.shop.social.command.NaverCallback;
import co.shop.social.command.NaverLogin;
import co.shop.social.command.SocialLogin;
import co.shop.user.command.ManagerPage;
import co.shop.user.command.OrderSelect;
import co.shop.user.command.UserPage;
import co.shop.userpage.command.UserDelete;
import co.shop.userpage.command.UserEditInfo;
import co.shop.userpage.command.UserInfoDeletePass;
import co.shop.userpage.command.UserInfoUpdate;
import co.shop.userpage.command.UserOrderList;



/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();      
    /**
     * @see HttpServlet#HttpServlet()
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		map.put("/main.do", new MainCommand());
		map.put("/login.do", new Login());
		map.put("/socialLogin.do", new SocialLogin());
		map.put("/ajaxCheckAge.do", new AjaxCheckAge());
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/forgetPw.do", new ForgetPw());
		map.put("/ajaxSearchPw.do", new AjaxSearchPw());
		map.put("/boardList.do", new BoardList());
		map.put("/boardSearch.do", new BoardSearch());
		map.put("/boardWrite.do", new BoardWrite());
		map.put("/boardInsert.do", new BoardInsert());
		map.put("/boardSelect.do", new BoardSelect());
		map.put("/boardEdit.do", new BoardEdit());
		map.put("/boardUpdate.do", new BoardUpdate());
		map.put("/boardDelete.do", new BoardDelete());
		
		map.put("/logout.do", new Logout());
		
		map.put("/naverLogin.do", new NaverLogin());
		map.put("/naverCallback.do", new NaverCallback());
		map.put("/memberInsert.do", new MemberInsert()); 
		map.put("/ajaxCheckId.do", new AjaxCheckId());

		map.put("/userpage.do", new UserPage()); // 유저 마이페이지
		map.put("/managerpage.do",new ManagerPage()); //관리자 페이지
		map.put("/productModify.do", new ProductModify());  //상품 수정
		map.put("/productInsertForm.do", new ProductInsertForm()); //제품 등록 폼 호출
		map.put("/productInsert.do", new ProductInsert()); //제품 등록
		map.put("/userorderlist.do", new UserOrderList()); // 유저 주문목록

		map.put("/userInfoDeletePass.do", new UserInfoDeletePass()); //유저 정보 삭제(비번창)
		map.put("/userDelete.do", new UserDelete()); // 유저 정보 삭제 처리 

		
		map.put("/cartList.do", new CartList());
		map.put("/productList.do", new ProductList()); //상품 리스트 (전체,와인,전통주,맥주)
		map.put("/productSelect.do", new ProductSelect()); //상품 개별 조회

		map.put("/searchProduct.do", new SearchProduct()); //상품 이름 검색
		map.put("/reportAction.do", new ReportAction()); //게시물 신고 하기
		

		map.put("/ajaxRepleDelete.do", new AjaxRepleDelete());
		
		//관리자 페이지
		map.put("/managerBoard.do", new ManagerBoard());
		map.put("/managerReple.do", new ManagerReple());
		map.put("/ajaxSetReple.do", new AjaxSetReple());
		map.put("/userEditInfo.do", new UserEditInfo()); //유저 정보 수정(유저 본인 정보)
		map.put("/memberUpdate.do", new UserInfoUpdate()); 

		
		//관리자 제품 관리
		map.put("/productListMng.do", new ProductListMng()); //관리자의 전체상품 리스트 ID오름차순
		//"/productList.do" URL에 대해 "ProductList" 클래스의 로직을 실행하도록 매핑
		
		map.put("/productSelectMng.do", new ProductSelectMng()); //제품 상세보기
		map.put("/productEdit.do", new ProductEdit());
		map.put("/productUpdate.do", new ProductUpdate());
		map.put("/productDelete.do", new ProductDelete());
		map.put("/productSaleMng.do", new ProductSaleMng());// 고객별 매출
		//map.put("/productSaleList.do", new ProductSaleList());// 특가상품 리스트 조회
		

//		map.put("/productListMng.do", new ProductListMng()); //관리자의 전체상품 리스트
		map.put("/managerBoardWrite.do",new ManagerBoardWrite()); //공지사항 작성)


		
		//관리자 페이지(이슬)
		map.put("/managerUpdateMember.do", new ManagerUpdateMember());
		map.put("/ajaxMemberDelete.do", new AjaxMemberDelete());
		map.put("/memberUpdate.do", new MemberUpdate());
		map.put("/reportList.do", new ReportList());
		map.put("/reportSelect.do", new ReportSelect());
		
		//카트
		map.put("/ajaxCountMinus.do", new AjaxCountMinus());
		map.put("/ajaxCountPlus.do", new AjaxCountPlus());
		map.put("/ajaxCartDelete.do", new AjaxCartDelete());
		map.put("/cartInsert.do", new CartInsert());
		
		//order(이슬)
		map.put("/ajaxOrderInsert.do", new AjaxOrderInsert());
		map.put("/ajaxOrderDetailInsert.do", new AjaxOrderDetailInsert());
		map.put("/orderPage.do", new OrderPage());
		map.put("/orderSelect.do", new OrderSelect());
		
		//리뷰
		
		map.put("/reviewInsert.do", new ReviewInsert());
		map.put("/ajaxDeleteReview.do", new AjaxDeleteReview());
		//술추천 페이지 관련 처리
		map.put("/recommend.do", new Recommend());
		map.put("/recommendResult.do", new RecommendResult());
		
		//결제 관련 처리
		map.put("/paymentOrder.do", new paymentOrder());
		map.put("/kakaopay.do", new Kakaopay());
		map.put("/kakaopayApproval.do", new KakaopayApproval());
		map.put("/kakaopayMessage.do", new KakaopayMessage());
		map.put("/depositMessage.do", new DepositMessage());
		
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uri= request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());
		Command command = map.get(page);
		String viewPage = command.exec(request, response);
		
		if(!viewPage.startsWith("orderSelect.do?orderId=") && !viewPage.equals("boardList.do?page=1") && !viewPage.equals("managerUpdateMember.do?page=1") && !viewPage.endsWith(".do") && !viewPage.contains("naver") && !viewPage.contains("socialLogin.do") && !viewPage.contains("online-pay.kakao.com") && !viewPage.contains("kakaopayMessage.do")) {
			if(viewPage.startsWith("Ajax:")) {
				response.setContentType("text/html; charset = UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			}
			if(viewPage.equals("member/Login")|| viewPage.equals("member/forgetPw")) {
				viewPage = "WEB-INF/views/" + viewPage + ".jsp";
			} else {
				viewPage = viewPage + ".tiles";
				
			}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect(viewPage);
		}
	}
	

}