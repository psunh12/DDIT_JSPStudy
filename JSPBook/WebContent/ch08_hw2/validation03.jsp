<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function CheckLogin(){
		var str = /^(?=.*[a-zA-Z]{1,})(?=.*[!@#$%^*+=-]{1,})(?=.*[0-9]{1,}).{8,}$/;
		if(document.loginForm.passwd.value.length < 8){
			alert("영문+숫자+특수기호 8자리 이상으로 구성하여야합니다.");
			return false;
		}
		if(!str.test(document.loginForm.passwd.value)){
			alert("영문+숫자+특수기호 8자리 이상으로 구성하여야합니다.");
			return false;
		}
		return true;
	}
</script>
<body>
	<form name="loginForm" action="validation_process.jsp">
		<p>아이디:<input type="text" name="id"/>
		<p>비밀번호:<input type="password" name="passwd"/>
		<p>비밀번호 확인:<input type="password" name="passwdCk"/>
		<p><input type="submit" onclick="return CheckLogin()"/>
	</form>
</body>
</html>