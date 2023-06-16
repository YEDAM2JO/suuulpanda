package co.shop.reple.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.board.service.BoardService;
import co.shop.board.service.BoardVO;
import co.shop.board.service.Impl.BoardServiceImpl;
import co.shop.common.Command;
import co.shop.reple.service.RepleService;
import co.shop.reple.service.RepleVO;
import co.shop.reple.service.Impl.RepleServiceImpl;

public class AjaxRepleDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		RepleService rs = new RepleServiceImpl();
		RepleVO vo = new RepleVO();
		vo.setRepleId(Integer.valueOf(request.getParameter("id")));
		rs.repleDelete(vo);
		
		BoardService bs = new BoardServiceImpl();
		BoardVO voo = new BoardVO();
		voo.setBoardId(Integer.valueOf(request.getParameter("boardId")));
		bs.boardRepleN(voo);
		String str = "Ajax:a";
		return str;
	}

}
