<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
</head>
<body>
<%
if(request.getParameter("register")==null){ %>
	<form method="post" action="?">
		User:<input name="user" type="text"/>
		Pass:<input name="password" type="password"/>
		Name:<input name="name" type="text"/>
		<input name="register" type="submit" value="注册"/>
	</form>
<%
}
else{
%>
<jsp:useBean id="user" scope="application" class="bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
注册成功！
<br/>
用户名:<%=user.getUser() %>
<br/>
密码:<%=user.getPassword() %>
<br/>
姓名:<%=user.getName() %>
<%
}
%>
</body>
</html>