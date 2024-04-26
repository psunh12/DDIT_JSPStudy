<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
// document 내의 모든 요소들이 로딩된 후 실행
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
			if(!f.type.match("image.*")){
				alert("이미지 확장자만 가능합니다.");
				return; // 함수 종료
			}
			// 이미지가 맞다면
			let reader = new FileReader();
			reader.onload = function(e){
				let img_html = "<img src='"+e.target.result+"' style='width:100%;' />";
				// 요소.append : 누적, 요소.html : 새로고침, 요소.innerHTML :J/S 에서 새로고침
				$("#pImg").html(img_html);
			}
			reader.readAsDataURL(f);
		});
	}
	// 이미지 미리보기 끝 ///////////////////////
});
</script>
</head>
<body>
	<!-- 1. form태그 2. post 3.multipart/form-data 4. file
	요청 URI: fileupload04_process.jsp
	요청파라미터 : {name=개똥이, subject=java, filename=파일객체}
	요청방식 : post
	-->
	<form name="fileForm" action="fileupload05_process.jsp"
		method="post" enctype="multipart/form-data">
			<p>이름 : <input type="text" name="name"/></p> <!-- FileItem, isFormField임 -->
			<p>제목 : <input type="text" name="subject"/></p> <!-- FileItem, isFormField임 -->
			<p id="pImg"></p>
			<p>파일: <input type="file" id="uploadFile" name="filename" /></p> <!-- FileItem, isFormField가 아님 -->
			<p><input type="submit" value="파일올리기"/></p>
	</form>
</body>
</html>