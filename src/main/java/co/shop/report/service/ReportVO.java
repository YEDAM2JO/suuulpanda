package co.shop.report.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class ReportVO {
	private int reportId;
	private String memberId;
	private String reportContent;
	private Date reportDate;
	private String reportStatus;
	private int boardId;
	private int page;
}
