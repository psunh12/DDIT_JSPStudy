<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <title>Validation04_2</title>
      <script type="text/javascript" src="/js/jquery.min.js"></script>
      <script type="text/javascript">
         //핸들러 함수 
         function checkform(){
			let form = document.frm;
			
			// 1) 아이디는 영문 소문자만 가능
			// form.id.value : admin
			for(i=0; i<form.id.value.length; i++){
				let ch = form.id.value.charAt(i);	// i : 0(a) ~ 4(n)
				if((ch<'a' || ch>'z')&&(ch>'A' || ch<'Z')&&(ch>'0'||ch<'9')){
					alert("아이디는 영문 소문자만 입력 가능합니다.");
					form.id.select();
					return; // break는 for문을 멈추는 반면, return은 함수 자체를 끝냄
				}
			}
			
			// 2) 비밀번호는 숫자만 입력 가능
			if(isNaN(form.passwd.value)){
				alert("비밀번호는 숫자만 입력 가능합니다.");
				form.passwd.select();
				return; // 함수 종료
			}
			// 위의 분기문을 잘 통과하면
			form.submit();	// url요청
         }
      </script>
   </head>
   <body>
      <!-- 
         요청URI : /ch08/validation04.jsp?name=admin
         요청파라미터 : name=admin
         요청방식 : get
      -->
      <form name="frm" action="validation02_processs.jsp" method="post">
         <p>이름 : <input type="text" name="id" required></p>
         <p>비밀번호 : <input type="password" name="passwd"/></p>
         <p><input type="button" value="전송" onclick="checkform()"></p>
      </form>
   </body>
</html>