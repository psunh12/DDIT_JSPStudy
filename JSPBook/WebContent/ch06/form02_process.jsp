<%@ page language="java" contentType="text/html; charset=UTF-8" %>   
<!DOCTYPE html>
<html>
<head>
<title></title>
<style></style>

<script></script>

</head>
<body>
<%
   request.setCharacterEncoding("utf-8");


   String inputName            = request.getParameter("inputName");
   String inputDescription     = request.getParameter("inputDescription");
   String inputStatus          = request.getParameter("inputStatus");
   String inputClientCompany   = request.getParameter("inputClientCompany");
   String inputProjectLeader   = request.getParameter("inputProjectLeader");
%>

     <p> inputName          : <%=inputName          %> </p>
     <p> inputDescription   : <%=inputDescription   %> </p>
     <p> inputStatus        : <%=inputStatus        %> </p>
     <p> inputClientCompany : <%=inputClientCompany %> </p>
     <p> inputProjectLeader : <%=inputProjectLeader %> </p>
   

</body>
</html>