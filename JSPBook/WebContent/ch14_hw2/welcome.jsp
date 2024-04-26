<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
</head>
<body>
    <%
        Cookie[] cookies = request.getCookies();

        if(cookies != null) {
            String userID = null;

            for(Cookie cookie : cookies) {
                if(cookie.getName().equals("userID")) {
                    userID = cookie.getValue();
                    break;
                }
            }

            if(userID != null) {
    %>
                <h3><%= userID %>님 반갑습니다.</h3>
                <a href="cookie_out.jsp">로그아웃</a>
    <%		
            } else {
                response.sendRedirect("cookie_out.jsp");
            }
        } else {
            response.sendRedirect("cookie_out.jsp");
        }
    %>
</body>
</html>
