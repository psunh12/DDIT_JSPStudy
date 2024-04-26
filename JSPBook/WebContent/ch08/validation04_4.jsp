<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkForm(){
		// Java Server Page -> Java를 추출
		let str =document.frm.title.value;
		let result = str.substring(0,4); //Java
		
		console.log("result : "+result);
		
		// 정규 표현식 선언
 		let regExp = /Java/i;	// i : ignore.대소문자 구별 안함.
		result = regExp.exec(str);	// Java
 		
		console.log("result : "+result);
	}
</script>
</head>
<body>
	<!-- p.271 -->
	<form name="frm">
		<p>이름 : <input type="text" name ="title" value="Java Server Page"/></p>
		<p><input type="button" value="전송" onclick="checkForm()"/></p>
	</form>
</body>
</html>