package co.shop.order.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class OrderVO2 {
	private String orderId;
	private String memberId;
	private String orderDate;
	private int orderPrice;
	
}
