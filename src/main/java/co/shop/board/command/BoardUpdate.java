package co.shop.board.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.board.service.BoardService;
import co.shop.board.service.BoardVO;
import co.shop.board.service.Impl.BoardServiceImpl;
import co.shop.common.Command;

public class BoardUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// (실제 DB작업) 게시글을 DB에 수정해서 저장한다.
				BoardService bs = new BoardServiceImpl();
				BoardVO vo = new BoardVO();
				// request에서 넘어올 때 다 String으로 넘어오기때문에
				vo.setBoardId(Integer.valueOf(request.getParameter("boardId")));
				vo.setBoardContent(request.getParameter("boardContent"));
				
				bs.boardUpdate(vo);
				return "boardList.do?page=1";
	}

}
