package co.shop.product.service;

import java.util.List;

public interface ProductService {

	List<ProductVO> getAllProductsMng();//관리자. product_id 오름차순으로 조회

	List<ProductVO> getProducts(String productKind); //상품 조회 (이진)
	
	List<ProductVO> getProductSaleList();//세일 상품 리스트 
	List<ProductVO> getAllProducts1();//관리자. product_id 오름차순으로 조회
	
	ProductVO productSelect(ProductVO vo); //상세조회 (이진)
	List<ProductVO> searchProductsName(String productName); // 상품이름검색 (이진)

	String productIdSelect(ProductVO vo);
	
	Integer productInsert(ProductVO vo);//상품 등록 (이진)
	
	int productUpdate(ProductVO vo);
	int productDelete(ProductVO vo);
	
}
