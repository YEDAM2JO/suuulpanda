package co.shop.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.board.service.BoardService;
import co.shop.board.service.BoardVO;
import co.shop.board.service.Impl.BoardServiceImpl;
import co.shop.common.Command;

public class BoardEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService bs = new BoardServiceImpl();
		BoardVO vo = new BoardVO();//결과를 담아서 보냄
		vo.setBoardId(Integer.valueOf(request.getParameter("boardId")));//넘어온 key값
		vo = bs.boardDetail(vo); //key에 해당하는 value받아옴
		request.setAttribute("board", vo);
		
		
		return "board/editForm";
	}

}
