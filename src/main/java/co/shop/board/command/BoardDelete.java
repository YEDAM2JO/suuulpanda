package co.shop.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.board.service.BoardService;
import co.shop.board.service.BoardVO;
import co.shop.board.service.Impl.BoardServiceImpl;
import co.shop.common.Command;
import co.shop.reple.service.RepleService;
import co.shop.reple.service.RepleVO;
import co.shop.reple.service.Impl.RepleServiceImpl;

public class BoardDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService bs = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBoardId(Integer.valueOf(request.getParameter("boardId")));
		bs.boardDelete(vo);
		
		RepleService rs = new RepleServiceImpl();
		RepleVO voo = new RepleVO();
		voo.setBoardId(Integer.valueOf(request.getParameter("boardId")));
		rs.allDelete(voo);
		
		return "boardList.do?page=1";
	}

}
