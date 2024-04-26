<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Scripting Tag</title>
<body>
    <%! String str="Hello,Java Server Pages" ;
    
        String getString(String data){
            return data;
    }%>
    <%out.println(str); %>
    
</body>
</head>
</html>
