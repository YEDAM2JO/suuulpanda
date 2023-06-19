package co.shop.product.service;

import java.util.List;

public interface ProductService {
	List<ProductVO> getAllProducts(); // 전체상품조회
	List<ProductVO> getAllProductsMng();//관리자. product_id 오름차순으로 조회
	List<ProductVO> getProductSaleList();//세일 상품 리스트 조회
	ProductVO productSelect(ProductVO vo); //상세조회
	List<ProductVO> searchProductsName(String productName); // 상품이름검색
	String productIdSelect(ProductVO vo);
	Integer productInsert(ProductVO vo);
	int productUpdate(ProductVO vo);
	int productDelete(ProductVO vo);
	
    List<ProductVO> getWineProducts(); //와인 페이지
    List<ProductVO> getTraditionalProducts(); //전통주 페이지
    List<ProductVO> getBeerProducts(); //맥주 페이지
	
}
