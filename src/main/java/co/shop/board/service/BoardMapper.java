package co.shop.board.service;

import java.util.List;

public interface BoardMapper {
	List<BoardVO> boardSelectList(BoardVO vo);
	int boardSelectMax(BoardVO vo);
	List<BoardVO> boardSelect(BoardVO vo);
	BoardVO boardDetail(BoardVO vo);
	int boardInsert(BoardVO vo);
	int boardUpdate(BoardVO vo);
	int boardView(BoardVO vo);
	int boardReple(BoardVO vo);
	int boardRepleN(BoardVO vo);
	int boardDelete(BoardVO vo);
}
