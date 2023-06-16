package co.shop.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.board.service.BoardService;
import co.shop.board.service.BoardVO;
import co.shop.board.service.Impl.BoardServiceImpl;
import co.shop.common.Command;

public class ManagerReple implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//게시글 상세보기
		BoardService bs = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBoardId(Integer.valueOf(request.getParameter("id")));
		bs.boardView(vo);
		vo = bs.boardDetail(vo);	//db에 가서 데이터 가져옴
				
				
		request.setAttribute("board", vo);	//데이터 전달
		return "board/managerReple";
	}

}
