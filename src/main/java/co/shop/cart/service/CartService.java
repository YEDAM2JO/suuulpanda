package co.shop.cart.service;

import java.util.List;

public interface CartService {
	
	List<CartVO> cartSelectList(CartVO vo);
	CartVO cartSelect(CartVO vo);
	int cartInsert(CartVO vo);
	int cartUpdate(CartVO vo);
	int cartMinus(CartVO vo);
	int cartPlus(CartVO vo);
	int cartDelete(CartVO vo);
	int cartMemberDelete(CartVO vo);
	
	List<CartVO> paymentOrder(String[] cartId); //cartId로 장바구니 모든 상품 정보 받아오기
	int orderSuccessDelete(String[] cartId); //결제완료 시 장바구니에서 삭제
	
	 
	
}
