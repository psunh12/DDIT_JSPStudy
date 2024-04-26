<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@page import="kr.or.ddit.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
/*
productId: P1237
pname: 개똥이폰
unitPrice: 12000
description: 삼성개똥이폰
manufacturer: Samsung
category: Smart Phone
unitsInStock: 1000
condition: New
uploadFile: 파일객체
*/
//이미지 파일 업로드 처리
String path = "C:\\eclipse-202006\\workspace\\JSPBook\\WebContent\\images";
//파일 업로드 처리용 클래스
DiskFileUpload upload = new DiskFileUpload();
upload.setSizeMax(5000000);//5Mb
upload.setSizeThreshold(5*4096); //5Mb
upload.setRepositoryPath(path);//임시저장경로(생략가능)
//request 객체에 있는 모든 요청 파라미터를 분석하여 List타입의 items 변수에 저장
List items = upload.parseRequest(request);
Iterator params = items.iterator();//열거형으로 처리

//파라미터 데이터 타입은 String임
String productId= "";
String pname= "";
String unitPrice= "";
String description= "";
String manufacturer= "";
String category= "";
String unitsInStock= "";
String condition= "";
//uploadFile=파일객체
String fileFieldName="";//uploadFile
String filename = "";//파일의 명
String contentType="";//파일의 MIME타입

long price = 0L;
long stock = 0L;

while(params.hasNext()){//다음항목이 있는지 체킹-돌다리도 두드려보고 건너라
   FileItem item = (FileItem)params.next();//있으면 그 항목을 가져옴
   if(item.isFormField()){//일반 항목일 때
      //item 
      /*
      productId: P1237
      pname: 개똥이폰
      unitPrice: 12000
      description: 삼성개똥이폰
      manufacturer: Samsung
      category: Smart Phone
      unitsInStock: 1000
      condition: New
      uploadFile: 파일객체
      */
      String name = item.getFieldName(); //productId
      if(name.equals("productId")){
         productId = item.getString("UTF-8");//P1237
      }else if(name.equals("pname")){
         pname = item.getString("UTF-8");//개똥이폰
      }else if(name.equals("unitPrice")){
         unitPrice = item.getString("UTF-8");//문자
         if(unitPrice.isEmpty()){//가격이 비어있다면
            price = 0;
         }else{
            price = Long.valueOf(unitPrice);
         }
      }else if(name.equals("description")){
         description = item.getString("UTF-8");//삼성 개똥이폰
      }else if(name.equals("manufacturer")){
         manufacturer = item.getString("UTF-8");//Samsung
      }else if(name.equals("category")){
         category = item.getString("UTF-8");//Smart Phone
      }else if(name.equals("unitsInStock")){
         unitsInStock = item.getString("UTF-8");//문자
         if(unitsInStock.isEmpty()){//가격이 비어있다면
            stock = 0L;
         }else{
            stock = Long.valueOf(unitPrice);
         }
      }else if(name.equals("condition")){
         condition = item.getString("UTF-8");//New
      }
   }else{//파일항목일때
      //item : uploadFile = 파일객체
      fileFieldName = item.getFieldName();//uploadFile
      filename = item.getName(); //c:\\Users\\test\\개똥이.jpg
      long fileSize = item.getSize();//파일크기
      contentType = item.getContentType(); //images/jpg
      //개똥이.jpg
      filename = filename.substring(filename.lastIndexOf("\\")+1);
      //설계
      File file = new File(path+ "/" + filename);//복사될 서버의 위치\\개똥이.jpg 
      //복사 처리
      item.write(file);
      
   }
}

price = Long.valueOf(unitPrice);
stock = Long.valueOf(unitsInStock);

ProductVO productVO = new ProductVO();
productVO.setProductId(productId);
productVO.setPname(pname);
productVO.setUnitPrice(price);//형변환된 price
productVO.setManufacturer(manufacturer);
productVO.setCategory(category);
productVO.setUnitsInStock(stock);//형변환된 stock
productVO.setCondition(condition);
productVO.setFilename(filename);

out.print("productVO : " + productVO);

//싱글톤 객체로 생성(상품 입력-> 목록에서도 보이게 됨)
ProductRepository dao = ProductRepository.getInstance();
//새로운 상품 등록
dao.addProduct(productVO);
//전체목록 가져와보기 
List<ProductVO> productVOList = dao.getAllProducts();
out.print("<p>productVOList : " + productVOList + "</p>");

//목록으로 이동(URL을 재요청)
response.sendRedirect("products.jsp");

%>