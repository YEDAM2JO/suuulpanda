package co.shop.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.shop.board.service.BoardService;
import co.shop.board.service.BoardVO;
import co.shop.board.service.Impl.BoardServiceImpl;
import co.shop.common.Command;

public class BoardInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		BoardService bs = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBoardContent(request.getParameter("boardContent"));
		vo.setBoardTitle(request.getParameter("boardTitle"));
		vo.setBoardSecret(request.getParameter("boardS"));
		System.out.println(request.getParameter("boardS"));
		vo.setMemberId(String.valueOf(session.getAttribute("id")));
		
		bs.boardInsert(vo);
		request.setAttribute("page", 1);
		return "boardList.do?page=1";
	}

}
