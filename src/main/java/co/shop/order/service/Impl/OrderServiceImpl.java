package co.shop.order.service.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.shop.common.DataSource;
import co.shop.order.service.OrderMapper;
import co.shop.order.service.OrderService;
import co.shop.order.service.OrderVO;

public class OrderServiceImpl implements OrderService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	OrderMapper map = sqlSession.getMapper(OrderMapper.class);
	
	@Override
	public List<OrderVO> orderSelectAll() {
		// TODO Auto-generated method stub
		return map.orderSelectAll();
	}

	@Override
	public List<OrderVO> orderSelectList(OrderVO vo) {
		// TODO Auto-generated method stub
		return map.orderSelectList(vo);
	}

	@Override
	public int orderSelect() {
		// TODO Auto-generated method stub
		return map.orderSelect();
	}

	@Override
	public int orderInsert(OrderVO vo) {
		// TODO Auto-generated method stub
		return map.orderInsert(vo);
	}

	@Override
	public int orderMemberNumber(OrderVO vo) {
		// TODO Auto-generated method stub
		return map.orderMemberNumber(vo);
	}

	@Override
	public int orderMemberMoney(OrderVO vo) {
		// TODO Auto-generated method stub
		return map.orderMemberMoney(vo);
	}
	
}
