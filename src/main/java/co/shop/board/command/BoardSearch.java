package co.shop.board.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.board.service.BoardService;
import co.shop.board.service.BoardVO;
import co.shop.board.service.Impl.BoardServiceImpl;
import co.shop.common.Command;

public class BoardSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService bs = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		String word = request.getParameter("searchWord");
		vo.setBoardContent(word);
		vo.setPage(Integer.valueOf(request.getParameter("page")));
		
		List<BoardVO> boards = bs.boardSelect(vo);
		
		int maxNum = bs.boardSelectMax(vo);
		request.setAttribute("boards", boards);
		
		int endPage = (int)Math.ceil(Integer.valueOf(request.getParameter("page"))*0.2) * 5	;
		int realEnd = (int)Math.ceil(maxNum/(double)10);
		
		
		request.setAttribute("startPage", endPage-5+1);
		if(realEnd < endPage) {
			endPage = realEnd;
		}
		request.setAttribute("endPage", endPage);
		request.setAttribute("realEnd", realEnd);
		request.setAttribute("boards", boards);
		request.setAttribute("searchWord", word);
		return "board/boardSearch";
		
		
		
	}

}
