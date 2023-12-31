package co.shop.order.service;

import java.util.List;



public interface OrderService {
	List<OrderVO> orderSelectAll();
	List<OrderVO> orderSelectList(OrderVO vo);
	List<OrderVO2> orderSelectList2(OrderVO2 vo);
	List<OrderVO2> getAllSalesMng();//회원 매출조회
	int orderSelect();
	int orderMemberNumber(OrderVO vo);
	int orderMemberNumber2(OrderVO2 vo);
	int orderMemberMoney(OrderVO vo);
	int orderMemberMoney2(OrderVO2 vo);
	int orderInsert(OrderVO vo);
}
