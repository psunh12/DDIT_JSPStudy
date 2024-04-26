<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p> 이 페이지는 5초마다 새로고침 됩니다</p>
	<%
		//response.setIntHeader("Refresh", 1);
	%>
<!-- 	대한민국 형식으로 시간이 나타난다. -->
	<p><%//=new Date().toLocaleString() %></p>
	<p id="p1"></p>
<script type="text/javascript">
function showTime(){
	let today = new Date();

	console.log("today : " + today);

	let year = today.getFullYear();
	let month = ('0' + (today.getMonth() + 1)).slice(-2);
	let day = ('0' + today.getDate()).slice(-2);

	let dateString = year + "-" + month + "-" + day;

	console.log("dateString : " + dateString);

	let hours   = ('0'+today.getHours()).slice(-2);
	let minutes = ('0'+today.getMinutes()).slice(-2);
	let seconds = ('0'+today.getSeconds()).slice(-2);

	let timeString = hours + ":" + minutes + ":" + seconds;

	console.log("timeString : " + timeString);
	//요소(태그) 선택(select) <p id="p1"></p>
	document.getElementById("p1").innerHTML = dateString + " " + timeString;	}	// end function showTime()
	setInterval(showTime, 1000);	// 1초마다 함수 호출
</script>	
</body>
</html>