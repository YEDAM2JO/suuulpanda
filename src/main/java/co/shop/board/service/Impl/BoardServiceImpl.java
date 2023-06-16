package co.shop.board.service.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.shop.board.service.BoardMapper;
import co.shop.board.service.BoardService;
import co.shop.board.service.BoardVO;
import co.shop.common.DataSource;

public class BoardServiceImpl implements BoardService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	BoardMapper map = sqlSession.getMapper(BoardMapper.class);
	
	@Override
	public List<BoardVO> boardSelectList(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardSelectList(vo);
	}

	@Override
	public List<BoardVO> boardSelect(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardSelect(vo);
	}

	@Override
	public int boardInsert(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardInsert(vo);
	}

	@Override
	public int boardUpdate(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardUpdate(vo);
	}

	@Override
	public int boardDelete(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardDelete(vo);
	}



	@Override
	public int boardSelectMax(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardSelectMax(vo);
	}

	@Override
	public BoardVO boardDetail(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardDetail(vo);
	}

	@Override
	public int boardView(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardView(vo);
	}

	@Override
	public int boardReple(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardReple(vo);
	}

	@Override
	public int boardRepleN(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardRepleN(vo);
	}

}
