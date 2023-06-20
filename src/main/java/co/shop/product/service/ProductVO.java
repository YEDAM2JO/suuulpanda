package co.shop.product.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class ProductVO {
	private String productId;
    private String productName;
    private String productKind;
    private String productImg;
    private String productImgPath;
    private int productPrice;
    private Date productDate;
    private String productTaste;
    private String productSparkling;
    private int productABV;
    private String productSale;
    private float productSalePercent;
    private int productSalePrice;
    private int page;
}
