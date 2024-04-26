<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkForm(){
		// 이름은 숫자로 시작할 수 없습니다.
		let str = document.frm.name.value;	//1개똥이 
		// 정규표현식 생성(문자형식). [a-z] : a~z사이의 문자 1글자
		let regExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		
		// 테스트를 통과하지 못했다면
		if(!regExp.test(str)){ // test()메소드: T/F
			alert("이름은 숫자로 시작할 수 없습니다.");
			return; // 함수 종료
		}
	}
</script>
</head>
<body>
	<!-- p.271 -->
	<form name="frm">
		<p>이름 : <input type="text" name ="name"/></p>
		<p><input type="button" value="전송" onclick="checkForm()"/></p>
	</form>
</body>
</html>