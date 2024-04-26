<nav class="navbar navbar-expand navbar-dark bg-dark">
   <div class="container">
      <div class="navbar-header">
         <a class="navbar-brand" href="welcome.jsp">Home</a>
      </div>
      <div style="float:right;">
      <!-- bookId -->
      ${param.bookId }
              	<c:set var="remoteUser" value="<%=request.getRemoteUser()%>"/>
         	<c:if test="${remoteUser != null}">
	         	<a href="/logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
         	</c:if>

      </div>
   </div>
</nav>