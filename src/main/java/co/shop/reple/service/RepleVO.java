package co.shop.reple.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RepleVO {
	private int repleId;
	private int boardId;
	private String repleContent;
	private Date RepleDate;
}
