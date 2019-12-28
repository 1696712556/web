<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String scope = request.getParameter("scope");
if(scope==null || scope.equals("page")){
%>
	<jsp:useBean id="counter_page" scope="page" class="bean.Counter"></jsp:useBean>
	<font color="red">演示：page</font><br/>
	您是本站第<font color="blue"><jsp:getProperty property="count" name="counter_page"/></font>
	个参观者<hr/>
<%}
else if(scope.equals("request")){
%>
	<jsp:useBean id="counter_request" scope="request" class="bean.Counter"></jsp:useBean>
	<font color="red">演示：request</font><br/>
	您是本站第<font color="blue"><jsp:getProperty property="count" name="counter_request"/></font>
	个参观者<hr/>
<%}
else if(scope.equals("session")){
%>
	<jsp:useBean id="counter_session" scope="session" class="bean.Counter"></jsp:useBean>
	<font color="red">演示：session</font><br/>
	您是本站第<font color="blue"><jsp:getProperty property="count" name="counter_session"/></font>
	个参观者<hr/>
<%}
else{
%>
	<jsp:useBean id="counter_application" scope="application" class="bean.Counter"></jsp:useBean>
	<font color="red">演示：application</font><br/>
	您是本站第<font color="blue"><jsp:getProperty property="count" name="counter_application"/></font>
	个参观者<hr/>
<%} %>
</body>
</html>