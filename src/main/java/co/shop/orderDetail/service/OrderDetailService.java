package co.shop.orderDetail.service;

import java.util.List;

public interface OrderDetailService {
   List<OrderDetailVO> orderDetailSelectList(OrderDetailVO vo);
   List<OrderDetailVO2> orderDetailSelectList2(OrderDetailVO2 vo);
   List<OrderDetailVO> getProductRanking();
   int orderDetailInsert(OrderDetailVO vo);
}