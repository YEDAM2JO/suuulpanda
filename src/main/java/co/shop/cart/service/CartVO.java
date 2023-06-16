package co.shop.cart.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class CartVO {
	private int cartId;
	private String memberId;
	private String productId;
	private String productName;
	private int productCount;
	private int productFee;
}
