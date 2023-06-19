package co.shop.order.service;

import java.util.List;

public interface OrderMapper {
	List<OrderVO> orderSelectAll();
	List<OrderVO> orderSelectList(OrderVO vo);
	List<OrderVO2> orderSelectList2(OrderVO2 vo);
	int orderSelect();
	int orderMemberNumber(OrderVO vo);
	int orderMemberNumber2(OrderVO2 vo);
	int orderMemberMoney(OrderVO vo);
	int orderMemberMoney2(OrderVO2 vo);
	int orderInsert(OrderVO vo);
}
