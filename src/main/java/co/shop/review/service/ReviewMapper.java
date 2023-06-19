package co.shop.review.service;

import java.util.List;

public interface ReviewMapper {
	List<ReviewVO> reviewSelectList(ReviewVO vo);
	int reviewInsert(ReviewVO vo);
	int reviewUpdate(ReviewVO vo);
	int reviewDelete(ReviewVO vo);
}
