<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
}
catch(ClassNotFoundException e) {
	out.println("加载异常");
}
out.println("veryNice");
%>
</body>
</html>