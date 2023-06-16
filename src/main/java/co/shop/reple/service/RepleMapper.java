package co.shop.reple.service;

import java.util.List;

public interface RepleMapper {
	List<RepleVO> repleSelectList(RepleVO vo);
	int repleInsert(RepleVO vo);
	int repleDelete(RepleVO vo);
}
