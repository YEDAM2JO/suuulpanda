package co.shop.order.service.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.shop.common.DataSource;
import co.shop.order.service.OrderMapper;
import co.shop.order.service.OrderService;
import co.shop.order.service.OrderVO;
import co.shop.order.service.OrderVO2;

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

	@Override
	public List<OrderVO2> orderSelectList2(OrderVO2 vo) {
		// TODO Auto-generated method stub
		return map.orderSelectList2(vo);
	}

	@Override
	public int orderMemberNumber2(OrderVO2 vo) {
		// TODO Auto-generated method stub
		return map.orderMemberNumber2(vo);
	}
	
	@Override
	public int orderMemberMoney2(OrderVO2 vo) {
		// TODO Auto-generated method stub
		return map.orderMemberMoney2(vo);
	}
}
