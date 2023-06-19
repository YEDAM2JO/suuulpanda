package co.shop.report.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.report.service.ReportService;
import co.shop.report.service.ReportVO;
import co.shop.report.service.Impl.ReportServiceImpl;

public class ReportAction implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String memberId = request.getParameter("memberId");
		String reportContent = request.getParameter("reportContent");
		
		ReportService rs = new ReportServiceImpl();
		ReportVO vo = new ReportVO();
		vo.setMemberId(memberId);
		vo.setReportContent(reportContent);
		vo.setBoardId(Integer.valueOf(request.getParameter("boardId2")));
		rs.reportInsert(vo);
		
		request.setAttribute("memberId", memberId);
		

        return "boardList.do?page=1";
	}

}
