package co.shop.orderDetail.service.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.shop.common.DataSource;
import co.shop.orderDetail.service.OrderDetailMapper;
import co.shop.orderDetail.service.OrderDetailService;
import co.shop.orderDetail.service.OrderDetailVO;

public class OrderDetailServiceImpl implements OrderDetailService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	OrderDetailMapper map = sqlSession.getMapper(OrderDetailMapper.class);
	@Override
	public List<OrderDetailVO> orderDetailSelectList(OrderDetailVO vo) {
		// TODO Auto-generated method stub
		return map.orderDetailSelectList(vo);
	}

	@Override
	public int orderDetailInsert(OrderDetailVO vo) {
		// TODO Auto-generated method stub
		return map.orderDetailInsert(vo);
	}

}
