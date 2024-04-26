<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function CheckLogin(){
	if(continuous()){
		alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
		return false;
	}
	if(document.loginForm.passwd.value != document.loginForm.passwdCk.value){
		alert("비밀번호 확인이 일치하지 않습니다.");
		return false;
	}
	return true;
}

function continuous(){
	var pass = document.loginForm.passwd.value;
	
	for(var i=0; i<pass.length-3; i++){
		if(pass.charAt(i+1) == (pass.charAt(i)+pass.charAt(i+2))/2){
			return false;
		}
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