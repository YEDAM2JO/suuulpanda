package co.shop.reple.service.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.shop.common.DataSource;
import co.shop.reple.service.RepleMapper;
import co.shop.reple.service.RepleService;
import co.shop.reple.service.RepleVO;

public class RepleServiceImpl implements RepleService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	RepleMapper map = sqlSession.getMapper(RepleMapper.class);
	
	@Override
	public List<RepleVO> repleSelectList(RepleVO vo) {
		// TODO Auto-generated method stub
		return map.repleSelectList(vo);
	}

	@Override
	public int repleInsert(RepleVO vo) {
		// TODO Auto-generated method stub
		return map.repleInsert(vo);
	}

	@Override
	public int repleDelete(RepleVO vo) {
		// TODO Auto-generated method stub
		return map.repleDelete(vo);
	}

	@Override
	public int allDelete(RepleVO vo) {
		// TODO Auto-generated method stub
		return map.allDelete(vo);
	}
	
}
