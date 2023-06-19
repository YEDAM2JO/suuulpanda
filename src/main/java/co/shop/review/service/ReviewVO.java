package co.shop.review.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
	private int reviewId;
	private String memberId;
	private String reviewContent;
	private Date reviewDate;
	private int reviewScore;
	private String productId;
	
}
