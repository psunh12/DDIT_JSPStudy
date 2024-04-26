<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function setTime() {
		let today = new Date();
		console.log("today : " + today);

		let year = today.getFullYear();
		let month = ('0' + (today.getMonth() + 1)).slice(-2);
		let day = ('0' + today.getDate()).slice(-2);

		let dateString = year + "-" + month + "-" + day;

		console.log("dateString : " + dateString);

		let hours = ('0' + today.getHours()).slice(-2);
		let minutes = ('0' + today.getMinutes()).slice(-2);
		let seconds = ('0' + today.getSeconds()).slice(-2);

		let timeString = hours + "-" + minutes + "-" + seconds;

		console.log("timeString : " + timeString);

		document.getElementById("time2").innerHTML = dateString + " "
				+ timeString;
	}
	setInterval(setTime, 1000);
</script>
<body>
	<p>
		현재 시간 :
		<%=java.util.Calendar.getInstance().getTime()%>
		<%-- 	              <%response.setIntHeader("Refresh", 1);%></a> --%>
	</p>

	<p id="time2"></p>
	<p>
		<a href="response_data.jsp">Google 홈페이지로 이동하기</a>
	</p>
</body>
</html>