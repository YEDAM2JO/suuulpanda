package co.shop.orderDetail.service.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.shop.common.DataSource;
import co.shop.order.service.OrderVO2;
import co.shop.orderDetail.service.OrderDetailMapper;
import co.shop.orderDetail.service.OrderDetailService;
import co.shop.orderDetail.service.OrderDetailVO;
import co.shop.orderDetail.service.OrderDetailVO2;

public class OrderDetailServiceImpl implements OrderDetailService {
   SqlSession sqlSession = DataSource.getInstance().openSession(true);
   OrderDetailMapper map = sqlSession.getMapper(OrderDetailMapper.class);
   
   @Override
   public List<OrderDetailVO> orderDetailSelectList(OrderDetailVO vo) {
      // TODO Auto-generated method stub
      return map.orderDetailSelectList(vo);
   }
   
   @Override
   public List<OrderDetailVO2> orderDetailSelectList2(OrderDetailVO2 vo) {
      // TODO Auto-generated method stub
      return map.orderDetailSelectList2(vo);
   }

   @Override
   public int orderDetailInsert(OrderDetailVO vo) {
      // TODO Auto-generated method stub
      return map.orderDetailInsert(vo);
   }

   
   @Override
      public List<OrderDetailVO> getProductRanking() {
         // TODO Auto-generated method stub
         return map.getProductRanking();
      }
}