<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	String user = request.getParameter("user");
	if(user==null || user.equals("")){
%>
<jsp:forward page="Login.jsp">
	<jsp:param value="<%=user %>" name="user"/>
</jsp:forward>
<%
	}
	else{
%>
<title>欢迎您，<%=user %>！</title>
</head>
<body>
	欢迎您，<%=user %>！
</body>
<%
}
%>
</html>