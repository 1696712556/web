<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<form action="uploadFile.jsp" method="post" enctype="multipart/form-data">
	请选择文件<input type="text" name="userName"><br>
	<input type="file" name="upload"/><br>
	<input type="submit" value="上传"/>
</form>
</body>
</html>