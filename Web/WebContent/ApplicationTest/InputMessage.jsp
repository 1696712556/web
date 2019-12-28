<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#form2 input {
		color:green;
		font-weight:bold;
	}
</style>
</head>
<body bgcolor="#abcdef">
	<form action="CheckMessage.jsp" method="post">
		请输入姓名:<input type="text" name="name"/>
		<br/>
		请输入标题:<input type="text" name="title"/>
		<br/>
		<textarea rows="10" cols="40" name="message"></textarea>
		<br/>
		<input type="submit" name="submit" value="提交"/>
	</form>
	<form action="ShowMessage.jsp" method="post">
		<input type="submit" value="查看留言板"/>
	</form>
</body>
</html>