package co.shop.orderDetail.service;

import java.util.List;

public interface OrderDetailMapper {
	List<OrderDetailVO> orderDetailSelectList(OrderDetailVO vo);
	int orderDetailInsert(OrderDetailVO vo);
}
