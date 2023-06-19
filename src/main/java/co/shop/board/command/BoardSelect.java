package co.shop.board.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.board.service.BoardService;
import co.shop.board.service.BoardVO;
import co.shop.board.service.Impl.BoardServiceImpl;
import co.shop.common.Command;
import co.shop.reple.service.RepleService;
import co.shop.reple.service.RepleVO;
import co.shop.reple.service.Impl.RepleServiceImpl;

public class BoardSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//게시글 상세보기
		BoardService bs = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBoardId(Integer.valueOf(request.getParameter("boardId")));
		bs.boardView(vo);
		vo = bs.boardDetail(vo);	//db에 가서 데이터 가져옴
		
		RepleService rs = new RepleServiceImpl();
		RepleVO voo = new RepleVO();
		voo.setBoardId(Integer.valueOf(request.getParameter("boardId")));
		List<RepleVO> reples = rs.repleSelectList(voo);
		
		String memberId = request.getParameter("memberId");
		request.setAttribute("memberId", memberId);
		
		request.setAttribute("board", vo);	//데이터 전달
		request.setAttribute("reples", reples);
		return "board/boardDetail";
		
	}

}
