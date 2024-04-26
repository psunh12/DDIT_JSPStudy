<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkMember(){
		// 1) 아이디는 문자로 시작
		let regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣][0-9|a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]+$/;
		// 2) 이름은 한글만 입력(시작과 끝이 한글. 시작:^, 끝:$) 웃음으로 시작하여 월급날로 끝남
		let regExpName = /^[가-힣]*$/;
		// 3) 비밀번호는 숫자만 입력. * : 0이상 반복(선택)
		let regExpPasswd = /^[0-9]*$/;
		// 4) 연락처 형식 준수(010-111-2222, 010-1111-2222)
		// 반복 => {3} : 딱 3회, {3,4} : 3이상 4이하, {3,} : 3이상
		let regExpPhone = /^\d{3}-\d{3,4}-\d{4}/;
		// 5) 이메일 형식 준수(02test-_\.0test@naver-_\..com(kr))
		let regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

		let form = document.Member;
		let id = form.id.value;
		let name = form.name.value;
		let passwd = form.passwd.value;
		let phone = form.phone1.value+"-"+form.phone2.value+"-"+form.phone3.value;
		let email = form.email.value;
		
		// 아이디는 문자로 시작
		if(!regExpId.test(id)){
			alert("아이디는 문자로 시작해주세요");
			form.id.select();
			return;
		}
		// 이름은 한글만 입력
		if(!regExpName.test(name)){
			alert("이름은 한글만 입력해주세요");
			return;
		}
		// 비밀번호는 숫자만 입력
		if(!regExpPasswd.test(passwd)){
			alert("비밀번호는 숫자만 입력해주세요");
			return;
		}
		// 연락처 형식 준수
		if(!regExpPhone.test(phone)){
			alert("연락처를 확인해주세요");
			return;
		}
		// 이메일 형식 준수
		if(!regExpEmail.test(email)){
			alert("이메일을 확인해주세요");
			return;
		}
// 		console.log("유효성검사 결과 통과!");
		form.submit();
	}
</script>
</head>
<body>
	<h3>회원 가입</h3>
	   <form action="validation05_process.jsp" name="Member" method="post">
	      <p>아이디 : <input type="text" name="id" /></p>
	      <p>비밀번호 : <input type="password" name="passwd" /></p>
	      <p>이름 : <input type="text" name="name" /></p>
	      <p>연락처 : 
	         <select name="phone1">
	            <option value="010">010</option>         
	            <option value="011">011</option>         
	            <option value="016">016</option>         
	            <option value="017">017</option>         
	            <option value="019">019</option>         
	         </select> - 
	         <input type="text" maxlength="4" size="4" name="phone2" /> -
	         <input type="text" maxlength="4" size="4" name="phone3" />
	      </p>
	      <p>이메일 : <input type="text" name="email" /></p>
	      <p><input type="button" value="가입하기" onclick="checkMember()" /></p>
	   </form>
</body>
</html>