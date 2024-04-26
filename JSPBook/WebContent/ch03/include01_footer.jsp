<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
// /ch03/include01_footer.jsp?memId=a001
String memId = request.getParameter("memId")==null?""
				:request.getParameter("memId");	// 개똥이
memId = URLDecoder.decode(memId);
%>
Copyright <%=memId%>