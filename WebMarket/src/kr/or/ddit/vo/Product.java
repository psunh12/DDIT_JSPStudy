package kr.or.ddit.vo;

import java.io.Serializable;

public class Product implements Serializable {
   
   // 프로퍼티
   private String productId;	// 상품 아이디
   private String pname;		// 상품명
   private long unitPrice;		// 상품 가격
   private String description;	// 상품 설명
   private String manufacturer; // 제조사
   private String category;		// 분류
   private long unitsInStock;	// 재고 수
   private String condition;	// 신상품 or 중고품 or 재생품
   private String filename;		// 이미지 파일명
   private int quantity;		// 장바구니 개수
   
   // 생성자
   public Product() {}
   
   public Product(String productId, String pname, int unitPrice) {
      this.productId = productId;
      this.pname = pname;
      this.unitPrice = unitPrice;
   }// 생성자 끝

   // Setter/Getter() 메소드 작성
   public String getProductId() {
      return productId;
   }

   public void setProductId(String productId) {
      this.productId = productId;
   }

   public String getPname() {
      return pname;
   }

   public void setPname(String pname) {
      this.pname = pname;
   }

   public long getUnitPrice() {
      return unitPrice;
   }

   public void setUnitPrice(long unitPrice) {
      this.unitPrice = unitPrice;
   }

   public String getDescription() {
      return description;
   }

   public void setDescription(String description) {
      this.description = description;
   }

   public String getManufacturer() {
      return manufacturer;
   }

   public void setManufacturer(String manufacturer) {
      this.manufacturer = manufacturer;
   }

   public String getCategory() {
      return category;
   }

   public void setCategory(String category) {
      this.category = category;
   }

   public long getUnitsInStock() {
      return unitsInStock;
   }

   public void setUnitsInStock(long unitsInStock) {
      this.unitsInStock = unitsInStock;
   }

   public String getCondition() {
      return condition;
   }

   public void setCondition(String condition) {
      this.condition = condition;
   }
   
   public String getFilename() {
	return filename;
	}
	
	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", pname=" + pname + ", unitPrice=" + unitPrice + ", description="
				+ description + ", manufacturer=" + manufacturer + ", category=" + category + ", unitsInStock="
				+ unitsInStock + ", condition=" + condition + ", filename=" + filename + ", quantity=" + quantity + "]";
	}
   
}