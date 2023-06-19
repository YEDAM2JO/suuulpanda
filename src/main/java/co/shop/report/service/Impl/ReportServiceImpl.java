package co.shop.report.service.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.shop.common.DataSource;
import co.shop.report.service.ReportMapper;
import co.shop.report.service.ReportService;
import co.shop.report.service.ReportVO;

public class ReportServiceImpl implements ReportService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ReportMapper map = sqlSession.getMapper(ReportMapper.class);

	@Override
	public List<ReportVO> getAllreports() {
		// TODO Auto-generated method stub
		return map.getAllreports();
	}

	@Override
	public int reportInsert(ReportVO vo) {
		// TODO Auto-generated method stub
		return map.reportInsert(vo);
	}

	@Override
	public int reportUpdate(String reportId, String reportStatus) {
		// TODO Auto-generated method stub
		return map.reportUpdate(reportId, reportStatus);
	}

	@Override
	public int reportDelete(ReportVO vo) {
		// TODO Auto-generated method stub
		return map.reportDelete(vo);
	}

}
