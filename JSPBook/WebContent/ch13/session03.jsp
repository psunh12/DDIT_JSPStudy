<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%// 스크립틀릿
	// 		속성명 		값
	String name; String value;
	int i =0;
	// 세션 속성을 모두 확인해보자
	Enumeration en = session.getAttributeNames(); // userID, userPW 열거형

	out.print("세션 아이디 : " +session.getId()+"<br />");
	
	// 세션 속성 이름이 있을때까지 반복
	while(en.hasMoreElements()){
		name = en.nextElement().toString();
		value = session.getAttribute(name).toString(); // session.getAttribute("userID")
	
		out.print("설정된 세션 속성 명["+ i + "] : "+ name + "<br />");
		out.print("설정된 세션 속성 명["+ i + "] : "+ name + "<br />");
	
		out.print("<hr />");
	}
%>
</body>
</html>