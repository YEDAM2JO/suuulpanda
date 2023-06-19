package co.shop.reple.service;

import java.util.List;

public interface RepleService {
	List<RepleVO> repleSelectList(RepleVO vo);
	int repleInsert(RepleVO vo);
	int repleDelete(RepleVO vo);
	int allDelete(RepleVO vo);
}
