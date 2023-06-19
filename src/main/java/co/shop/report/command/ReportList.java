package co.shop.report.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.member.service.MemberService;
import co.shop.member.service.MemberVO;
import co.shop.member.service.Impl.MemberServiceImpl;
import co.shop.report.service.ReportService;
import co.shop.report.service.ReportVO;
import co.shop.report.service.Impl.ReportServiceImpl;

public class ReportList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReportService rs = new ReportServiceImpl();
		ReportVO vo = new ReportVO();
		vo.setPage(Integer.valueOf(request.getParameter("page")));
		List<ReportVO> reports = rs.getAllReports(vo);
		
		int maxNum = rs.reportSelectMax();
		
		int endPage = (int)Math.ceil(Integer.valueOf(request.getParameter("page"))*0.2) * 5	;
		int realEnd = (int)Math.ceil(maxNum/(double)5);
		
		
		
		request.setAttribute("startPage", endPage-5+1);
		if(realEnd < endPage) {
			endPage = realEnd;
		}
		request.setAttribute("endPage", endPage);
		request.setAttribute("realEnd", realEnd);
		request.setAttribute("reports", reports);
		

		return "manager/reportList";
	}

}
