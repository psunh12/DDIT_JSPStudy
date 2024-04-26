<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
<%
	String memId ="개똥이";
	memId= URLEncoder.encode(memId);
%>
<%@ include file="/ch03/include01_header.jsp" %>
	<h4>-------------현재 페이지 영역--------------</h4>
	<!-- include 디렉티브 파라미터 전송이 안됨. -->
<%-- <%@ include file="include01_footer.jsp" %> --%>
<jsp:include page="include01_footer.jsp">
	<jsp:param value="개똥이" name="memId"/>
</jsp:include>
</body>
</html>