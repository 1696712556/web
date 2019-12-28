<%
	String user = request.getParameter("user");
	String password = request.getParameter("password");
	if(user!=null && password != null && 
			user.equals("user") && password.equals("password")){
%>
<jsp:forward page="LoginSuccess.jsp">
	<jsp:param value="<%=user%>" name="user"/>
</jsp:forward>
<%
	}
	else{
%>
<jsp:forward page="Login.jsp">
	<jsp:param value="<%=user %>" name="user"/>
</jsp:forward>
<%
	}
%>