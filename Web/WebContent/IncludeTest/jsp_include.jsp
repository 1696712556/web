<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>This is Jsp_include</title>
</head>
<body>
	<%@include file="static.html" %>
	<%//静态包含只是把文件包含进来 %>
	<a href="action.jsp">去action.jsp看看</a>
	<br>
	这是一个包含的例子
	<jsp:include page="action.jsp" flush="true">
		<jsp:param name="a1" value="<%=request.getParameter(\"name\") %>"/>
		<jsp:param name="a2" value="<%=request.getParameter(\"password\") %>"/>
	</jsp:include>
	<%//包含了一个动态文件，并给其传参 %>
</body>
</html>