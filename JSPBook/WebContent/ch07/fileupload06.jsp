<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>FileUpload</title>
<script type="text/javascript">
$(function(){
	// 이미지 미리보기 시작 ///////////////////////
	$("#uploadFile").on("change", handleImg);
	// e : onchange 이벤트
	function handleImg(e){
		// e.target : <input type ="file" id="uploadFile" name ="filename" />
		let files = e.target.files; // 파일들
		// fileArr = [a.jpg, b.jpg, c.jpg]
		let fileArr = Array.prototype.slice.call(files);
		fileArr.forEach(function(f){
			
			// 이미지가 아니면
			console.log(f.name);
			$(".custom-file-label").html(f.name);
		});
	}
	// 이미지 미리보기 끝 ///////////////////////
});

</script>
</head>
<body>
	<div class="card card-primary">
		<div class="card-header">
			<h3 class="card-title">로그인</h3>
		</div>
		<!-- 
		요청URI : fileupload06_process.jsp
		요청파라미터 : {memMail = test@test.com, password=java,uploadFile=파일객체, remember-me=on}	
		요청방식 : post
		-->

		<form name="frm" action="fileupload06_process.jsp" method="post"
			enctype="multipart/form-data" >
			<div class="card-body">
				<div class="form-group">
					<label for="exampleInputEmail1">Email address</label>
					<input type="email" class="form-control" id="memMail" name="memMail"
						placeholder="Enter email" required />
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Password</label>
					<input type="password" class="form-control" id="password" name="password"
						placeholder="Password" required />
				</div>
				<div class="form-group">
					<label for="exampleInputFile">File input</label>
					<div class="input-group">
						<div class="custom-file">
							<input type="file" class="custom-file-input" id="uploadFile" name ="uploadFile" required />
								<label class="custom-file-label"
									for="exampleInputFile">Choose file</label>
						</div>
					</div>
				</div>
				<div class="form-check">
					<input type="checkbox" class="form-check-input" id="remember-me"
						name="remember-me" />
					<label class="form-check-label" for="remember-me">
					Check me out</label>
				</div>
			</div>

			<div class="card-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</form>
	</div>
</body>
</html>