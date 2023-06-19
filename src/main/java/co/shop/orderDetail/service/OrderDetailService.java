package co.shop.orderDetail.service;

import java.util.List;

public interface OrderDetailService {
	List<OrderDetailVO> orderDetailSelectList(OrderDetailVO vo);
	int orderDetailInsert(OrderDetailVO vo);
}
