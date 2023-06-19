package co.shop.report.command;

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
import co.shop.report.service.ReportService;
import co.shop.report.service.ReportVO;
import co.shop.report.service.Impl.ReportServiceImpl;

public class ReportSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReportService rs = new ReportServiceImpl();
		ReportVO vo = new ReportVO();
		vo.setReportId(Integer.valueOf(request.getParameter("reportId")));
		rs.reportUpdate(vo);
		
		
		BoardService bs = new BoardServiceImpl();
		BoardVO voo = new BoardVO();
		voo.setBoardId(Integer.valueOf(request.getParameter("boardId")));
		bs.boardView(voo);
		voo = bs.boardDetail(voo);	//db에 가서 데이터 가져옴
		
		RepleService rsc = new RepleServiceImpl();
		RepleVO vooo = new RepleVO();
		vooo.setBoardId(Integer.valueOf(request.getParameter("boardId")));
		List<RepleVO> reples = rsc.repleSelectList(vooo);
		
		String memberId = request.getParameter("memberId");
		request.setAttribute("memberId", memberId);
		
		request.setAttribute("board", voo);	//데이터 전달
		request.setAttribute("reples", reples);
		return "board/boardDetail";
	
	}

}
