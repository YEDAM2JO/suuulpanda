package co.shop.order.service;

import java.util.List;

public interface OrderService {
	List<OrderVO> orderSelectAll();
	List<OrderVO> orderSelectList(OrderVO vo);
	int orderSelect();
	int orderMemberNumber(OrderVO vo);
	int orderMemberMoney(OrderVO vo);
	int orderInsert(OrderVO vo);
}
