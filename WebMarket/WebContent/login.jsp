<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet"
	href="./css/bootstrap.min.css">
</head>
<body>
	<%@ include file = "menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>

	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4" >
			<h3 class="form-signin-heading">Please sign in</h3>
			<%
				// 로그인 인증에 실패했을떄 요청 파라미터의 값을 얻어오도록 파라미터 메소드 작성함
				String error = request.getParameter("error");
				if(error != null){
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 입력해주세요");
					out.println("</div>");
				}
			%>
			
			<!-- 로그인 인증 처리를 위한 form 태그 : action 속성 값=j_security_check -->
			<form class="form-singin" action="j_security_check" method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label>
					<input type="text" class="form-control" placeholder="ID" name="j_username" required autofocus>
				</div>
			
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label>				
					<input type="password" class="form-control" placeholder="Password" name="j_password" required>
				</div>
				<button class="btn btn-lg btn-success btn-block" type="submit">로그인</button>
			</form>
		</div>
	</div>
	<%@ include file = "footer.jsp" %>

</body>
</html>