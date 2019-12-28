<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
</head>
<body>
<%
	String user = request.getParameter("user");
%>
<form action="CheckLogin.jsp" method="post">
<table>
	<tr>
		<td>用户名：</td>
		<td><input type="text" name="user" value="<%=user==null?"":user%>"/>
	</tr>
	<tr>
		<td>密码</td>
		<td><input type="password" name="password" /></td>
	</tr>
	<tr>
		<td><input type="submit" value="登录"></td>
	</tr>
</table>
</form>
</body>
</html>