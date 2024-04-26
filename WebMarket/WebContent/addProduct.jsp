<%@ page contentType="text/html; charset=utf-8" %>
<html> 
<head>
<link rel="stylesheet" 
	href="./css/bootstrap.min.css">
<script src="./js/validation.js"></script>
<title>상품 등록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 등록</h1>
		</div>
	</div>
	<div class="container">
		<a href="logout.jsp" class="btn btn-sm btn-success pull-right">Logout</a>
		<form name="newProduct" action="./processAddProduct.jsp" class="form-
		horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">상품 코드</label>
				<div class="col-sm-3">
					<input type="text" id="productId" name="productId" class="form- control" >
				</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">상품명</label>
			<div class="col-sm-3">
				<input type="text" id="pname" name="pname" class="form-control" >
		</div>
	</div>
	<div class="form-group row">
			<label class="col-sm-2">가격</label>
			<div class="col-sm-3">
				<input type="text" id="unitPrice" name="unitPrice" class="form- control" >
		</div>
	</div>
		<div class="form-group row">
		<label class="col-sm-2">상세 정보</label>
		<div class="col-sm-5">
			<textarea id="unitPrice" name="description" cols="50" rows="2" class="form-control"></textarea>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">제조사</label>
		<div class="col-sm-3">
			<input type="text" id="manufacturer" name="manufacturer" class="form- control">
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">분류</label>
		<div class="col-sm-3">
			<input type="text" id="category" name="category" class="form- control" >
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">재고 수</label>
		<div class="col-sm-3">
			<input type="text" id="unitsInStock" name="unitsInStock" class="form- control" >
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">상태</label>
		<div class="col-sm-5">
			<input type="radio" name="condition" value="New">
			신규 제품
			<input type="radio" name="condition" value="old" >
			중고 제품
			<input type="radio" name="condition" value="Refurbished"> 
			재생 제품
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">이미지</label>
		<div class="col-sm-5">
			<input type="file" name="uploadFile" class="form-control">
		</div>
	</div>
	<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="button" class="btn btn-primary" value="등록" onclick="CheckAddProduct()">
			</div>
		</div>
	</form>
</div>
</body>
</html>		
