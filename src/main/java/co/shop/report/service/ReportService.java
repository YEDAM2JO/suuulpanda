package co.shop.report.service;

import java.util.List;

public interface ReportService {
	List<ReportVO> getAllReports(ReportVO vo);
	int reportSelectMax();
	int reportInsert(ReportVO vo);
	int reportUpdate(ReportVO vo);
	int reportDelete(ReportVO vo);


}
