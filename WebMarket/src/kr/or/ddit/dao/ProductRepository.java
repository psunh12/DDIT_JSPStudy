package kr.or.ddit.dao;

import java.util.ArrayList;

import kr.or.ddit.vo.Product;

public class ProductRepository {

	// 싱글톤 생성
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();	
	
	private static ProductRepository instance = new ProductRepository();
	public static ProductRepository getInstance() {
		return instance;
	}
	
	//멤버변수와 기본 생성자 만든 후 listOfProducts에 저장함
	public ProductRepository() {
	  Product phone = new Product("P1234", "iPhone 6s", 800000);
	  phone.setDescription("4.7-inch, 1334X750 Retina HD display, 8-megapixel iSight Camera");
	  phone.setCategory("Smart Phone");
	  phone.setManufacturer("Apple");
	  phone.setUnitsInStock(1000);
	  phone.setCondition("New");
	  phone.setFilename("P1234.jpg");
	  
	  Product notebook = new Product("P1235", "LG PC 그램", 1500000);
	  notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
	  notebook.setCategory("Notebook");
	  notebook.setManufacturer("LG");
	  notebook.setUnitsInStock(1000);
	  notebook.setCondition("Refurbished");
	  notebook.setFilename("P1235.jpg");
	  
	  Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
	  tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor");
	  tablet.setCategory("Tablet");
	  tablet.setManufacturer("Samsung");
	  tablet.setUnitsInStock(1000);
	  tablet.setCondition("Old");
	  tablet.setFilename("P1236.jpg");
	      
      listOfProducts.add(phone);
      listOfProducts.add(notebook);
      listOfProducts.add(tablet); 
   }
	
	// listOfProducts에 저장된 모든 상품 목록을 가져오는 메소드
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	// 상품 상세정보를 가져오는 메소드
	public Product getProductById(String productId) {
		Product productById = null;
		
		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product =listOfProducts.get(i);
			// 현재 제품이 null이 아니고, 제품의 ID가 null이 아니며, 현재 제품의 ID가 주어진 productId와 일치하는 경우 
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				// 변수에 현재제품을 할당
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	// listOfProducts에 상품추가
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
