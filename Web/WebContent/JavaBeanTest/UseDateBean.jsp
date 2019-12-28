<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UseDateBean.jsp</title>
</head>
<body>
	<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
	现在是<%=date %>
	<br/>
	现在是<jsp:getProperty property="year" name="date"/>年
	<jsp:setProperty property="year" name="date" value="2012"/>
	<br/>
	setProperty后是<jsp:getProperty property="year" name="date"/>年了！
	<br/>
	不信你看：<%=date.getYear() %>
</body>
</html>