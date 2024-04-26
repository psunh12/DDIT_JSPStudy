<%@page import="kr.or.ddit.vo.BookVO"%>
<%@page import="java.io.File"%>
<%@page import="kr.or.ddit.vo.BookRepository"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
// ... (기타 코드)

// 변수들을 초기화합니다.
String bookId= "";
String name= "";
String unitPrice= "";
String author= "";
String description= "";
String publisher= "";
String category= "";
String unitsInStock= "";
String totalPages ="";
String releaseDate="";
String condition= "";
String fileFieldName="";
String filename = "";
String contentType="";

long price = 0L;
long stock = 0L;
long pages = 0L;

// 파일 업로드를 처리합니다.
String path = "C:\\jspTest\\workspace\\BookMarket1\\images";
DiskFileUpload upload = new DiskFileUpload();
upload.setSizeMax(5000000); // 5Mb
upload.setSizeThreshold(5*4096); // 5Mb
upload.setRepositoryPath(path);
List items = upload.parseRequest(request);
Iterator params = items.iterator();

while(params.hasNext()){
    FileItem item = (FileItem)params.next();
    if(item.isFormField()){
        String fname = item.getFieldName();
        if(fname.equals("bookId")){
            bookId = item.getString("UTF-8");
        } else if(fname.equals("name")){
            name = item.getString("UTF-8");
        } else if(fname.equals("unitPrice")){
            unitPrice = item.getString("UTF-8");
            if(unitPrice.isEmpty()){
                price = 0;
            } else {
                price = Long.valueOf(unitPrice);
            }
        } else if(fname.equals("author")){
            author = item.getString("UTF-8");
        } else if(fname.equals("description")){
            description = item.getString("UTF-8");
        } else if(fname.equals("manufacturer")){
            publisher = item.getString("UTF-8");
        } else if(fname.equals("publisher")){
            category = item.getString("UTF-8");
        } else if(fname.equals("unitsInStock")){
            unitsInStock = item.getString("UTF-8");
            if(unitsInStock.isEmpty()){
                stock = 0L;
            } else {
                stock = Long.valueOf(unitsInStock);
            }
        } else if(fname.equals("condition")){
            condition = item.getString("UTF-8");
        } else if(fname.equals("totalPages")) {
            totalPages = item.getString("UTF-8");
            if(totalPages.isEmpty()){
                pages = 0L;
            } else {
                pages = Long.valueOf(totalPages);
            }
        } else if(fname.equals("releaseDate")) {
            releaseDate = item.getString("UTF-8");
        }
    } else {
        fileFieldName = item.getFieldName();
        filename = item.getName();
        long fileSize = item.getSize();
        contentType = item.getContentType();
        filename = filename.substring(filename.lastIndexOf("\\")+1);
        File file = new File(path+ "/" + filename);
        item.write(file);
    }
}

// BookVO 객체를 생성하고 값을 설정합니다.
BookVO bookVO = new BookVO();
bookVO.setBookId(bookId);
bookVO.setName(name);
bookVO.setUnitPrice(price);
bookVO.setAuthor(author);
bookVO.setPublisher(publisher);
bookVO.setReleaseDate(releaseDate);
bookVO.setTotalPages(pages);
bookVO.setCategory(category);
bookVO.setUnitsInStock(stock);
bookVO.setCondition(condition);
bookVO.setFilename(filename);

// BookRepository를 이용하여 상품을 추가하고 목록을 가져옵니다.
BookRepository dao = BookRepository.getInstance();
dao.addBook(bookVO);
List<BookVO> bookVOList = dao.getAllBooks();

// 목록 페이지로 리다이렉트합니다.
response.sendRedirect("books.jsp");
%>
