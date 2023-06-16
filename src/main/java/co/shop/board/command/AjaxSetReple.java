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

public class AjaxSetReple implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		RepleService rs = new RepleServiceImpl();
		RepleVO vo = new RepleVO();
		vo.setBoardId(Integer.valueOf(request.getParameter("id")));
		vo.setRepleContent(request.getParameter("content"));
		
		rs.repleInsert(vo);
		
		String str = "Ajax:" + request.getParameter("content");
		
		BoardService bs = new BoardServiceImpl();
		BoardVO voo = new BoardVO();
		voo.setBoardId(Integer.valueOf(request.getParameter("id")));
		System.out.println(request.getParameter("id"));
		bs.boardReple(voo);
		
		
		
		return str;
	}

}
