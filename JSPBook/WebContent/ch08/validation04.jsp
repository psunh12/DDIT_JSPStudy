<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <title>Validation04</title>
      <link rel="stylesheet" href="/css/font.css">
      <link rel="stylesheet" href="/css/input.css">
      <script type="text/javascript" src="/js/jquery.min.js"></script>
      <script type="text/javascript">
         //핸들러 함수
         function checkform(){
            //이름은 숫자로 시작할 수 없음
            //"1admin".substr(0,1) => 1
            //isNan : It is Not a Number : 그것은 숫자가 아니다
         if(!isNaN(document.frm.name.value.substr(0,1))){
               alert("이름은 숫자로 시작할 수 없습니다.")
               document.frm.name.select();
               return;
            }
            //통과했다면
            //form에 action속성이 없으면? 현재 URL을 요청
            //method 속성이 없으면? 기본 GET방식
            form.submit();
         }
      </script>
   </head>
   <body>
      <!-- 
         요청URI : /ch08/validation04.jsp?name=admin
         요청파라미터 : name=admin
         요청방식 : get
      -->
      <form name="frm">
         <p>이름 : <input type="text" name="name" required></p>
         <p><input type="button" value="전송" onclick="checkform()"></p>
      </form>
   </body>
</html>