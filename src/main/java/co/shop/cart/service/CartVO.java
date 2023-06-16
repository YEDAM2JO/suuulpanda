package co.shop.cart.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class CartVO {
	private int cartId;
	private String memberId;
	private int productId;
	private int productCount;
	private int proudctFee;
}
