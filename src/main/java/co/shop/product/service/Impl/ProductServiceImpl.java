package co.shop.product.service.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.shop.common.DataSource;
import co.shop.product.service.ProductMapper;
import co.shop.product.service.ProductService;
import co.shop.product.service.ProductVO;

public class ProductServiceImpl implements ProductService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true); 
	ProductMapper map = sqlSession.getMapper(ProductMapper.class);
	
	@Override
	public List<ProductVO> getAllProducts() {
		// TODO Auto-generated method stub
		return map.getAllProducts();
	}
	
	
	@Override
	public List<ProductVO> getAllProductsMng() {
		// TODO Auto-generated method stub
		return map.getAllProductsMng();
	}
	
	@Override
	public List<ProductVO> getProductSaleList() {
		// TODO Auto-generated method stub
		return map.getProductSaleList();
	}

	
	
	
	@Override
	public ProductVO productSelect(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productSelect(vo);
	}

	@Override
	public List<ProductVO> searchProductsName(String productName) {
		// TODO Auto-generated method stub
		return map.searchProductsName(productName);
	}

	@Override
	public Integer productInsert(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productInsert(vo);
	}

	@Override
	public int productUpdate(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productUpdate(vo);
	}

	@Override
	public int productDelete(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productDelete(vo);
	}

	@Override
	public List<ProductVO> getWineProducts() {
		// TODO Auto-generated method stub
		return map.getWineProducts();
	}

	@Override
	public List<ProductVO> getTraditionalProducts() {
		// TODO Auto-generated method stub
		return map.getTraditionalProducts();
	}

	@Override
	public List<ProductVO> getBeerProducts() {
		// TODO Auto-generated method stub
		return map.getBeerProducts();
	}


	@Override
	public String productIdSelect(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productIdSelect(vo);
	}

	
	
}
