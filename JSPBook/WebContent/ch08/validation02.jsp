<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkform(){
		let form = document.loginForm;
		// 아이디 : 4~12자 이내로 입력
		if(form.id.value.length<4 || form.id.value.length>12){
			alert("아이디는 4~12자 이내로 입력해주세요");
			form.id.select(); // 그 요소의 글자를 선택
 		}
		// 비밀번호 : 4자 이내로 입력
		if(form.passwd.value.length < 4){
			alert("비밀번호는 4자 이상으로 입력해주세요");
			form.passwd.select();
			return;
		}
		// 두 가지 모두 통과 시
		form.submit(); // URL 요청
	}
</script>
</head>
<body>
	<!-- 
	   요청URI : validation02_process.jsp
	   요청파라미터 : {id=a001,passwd=java}
	   요청방식 : post
	-->
	<form name = "loginForm" action="validation02_processs.jsp" method="post">
		<p>아이디 : <input type="text" name="id"/></p>
		<p>비밀번호 : <input type="password" name="passwd"/></p>
		<!-- checkform() : 핸들러 함수(자바스크립트에서 처리) -->
		<p><input type="button" value="전송" onclick="checkform()"></p>
	</form>
</body>
</html>