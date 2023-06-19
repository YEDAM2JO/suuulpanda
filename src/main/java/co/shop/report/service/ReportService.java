package co.shop.report.service;

import java.util.List;

public interface ReportService {
	List<ReportVO> getAllreports();
	int reportInsert(ReportVO vo);
	int reportUpdate(String reportId, String reportStatus);
	int reportDelete(ReportVO vo);


}
