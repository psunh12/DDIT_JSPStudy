<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="/css/bootstrap.min.css">
<title>Welcome</title>
<script type="text/javascript">
function gogo(){
	let today = new Date();
	
	console.log("today: "+today);
	
	let year = today.getFullYear();	// 연도
	// 2월 -> 02월
	let month = ('0'+(today.getMonth()+1)).slice(-2); // 월
	// 9일 -> 09일
	let day = ('0'+today.getDate()).slice(-2); // 일
	
	let hours = ('0'+today.getHours()).slice(-2); //시
	let minutes = ('0'+today.getMinutes()).slice(-2); // 분
	let seconds = ('0'+today.getSeconds()).slice(-2);
	
	let date ={
			"year":year, "month":month, "day":day,
			"hours":hours, "minutes":minutes, "seconds":seconds
	};
	
	console.log("date : "+ JSON.stringify(date));
	
	let dateString = year + "-" + month + "-"+day;
	let timeString = hours+":"+minutes+":"+seconds;
	
	// select
	document.getElementById("idH4").innerHTML = dateString + " "+timeString;

}
setInterval(gogo, 1000);
</script>
</head>
<body>
<!-- 디렉티브태그: 정적, 파라미터 없음 -->
<%@ include file="menu.jsp" %>
<!-- 액션태그 :동적(변화있는), 파라미터, 잘 안씀 ㅠ -->
<%-- <jsp:include page="menu.jsp"></jsp:include> --%>

<%!	// 선언문(전역변수)
	String greeting = "웹 쇼핑몰에 오신것을 환영합니다.";
	String tagline = "Welcome to 선혜 Market";
%>
<div class="jumbotron">
	<!-- container: 내용이 들어감 -->
	<div class="container">
		<h1 class = "display-3"><%=greeting %></h1>
	</div>
</div>
<div class = "container">
	<!-- 내용을 중간 정렬 -->
	<div class = "text-center">
		<h3><%=tagline %></h3>
		<p>현재 접속시각: <h4 id="idH4"></h4></p>
	</div>
</div>
<%@ include file="footer.jsp" %>

<!-- 
1. BookProj 프로젝트 생성
2. 환경설정 3총사 설정
3. 서버포트를 8095(admin port), 8090(port)
4. localhost:8090/welcome.jsp 실행 시 자신의 이름으로 3행시 작성이 화면에 보임
 -->

</body>
</html>