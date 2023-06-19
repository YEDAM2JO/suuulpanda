package co.shop.review.service.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.shop.common.DataSource;
import co.shop.review.service.ReviewMapper;
import co.shop.review.service.ReviewService;
import co.shop.review.service.ReviewVO;


public class ReviewServiceImpl implements ReviewService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ReviewMapper map = sqlSession.getMapper(ReviewMapper.class);
	
	@Override
	public List<ReviewVO> reviewSelectList(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.reviewSelectList(vo);
	}

	@Override
	public int reviewInsert(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.reviewInsert(vo);
	}

	@Override
	public int reviewUpdate(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.reviewUpdate(vo);
	}

	@Override
	public int reviewDelete(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.reviewDelete(vo);
	}

}
