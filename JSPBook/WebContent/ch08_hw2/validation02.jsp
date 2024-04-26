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
		var form=document.loginForm;
		if(form.id.value ==""){
			alert("아이디를 입력해주세요.");
			form.id.focus();
			return false;
		}else if(form.passwd.value=="" ){
			alert("비밀번호를 입력해주세요.");
			form.passwd.focus();
			return false;
		}
		if((document.loginForm.passwd.value).search(document.loginForm.id.value)>-1){
			alert("비밀번호는 ID를 포함할 수 없습니다.")
			return false;
		}
		return true;
	}
</script>
<body>
	<form name="loginForm" action="validation_process.jsp">
		<p>아이디:<input type="text" name="id"/>
		<p>비밀번호:<input type="password" name="passwd"/>
		<p><input type="submit" onclick="return CheckLogin()"/>
	</form>
</body>
</html>