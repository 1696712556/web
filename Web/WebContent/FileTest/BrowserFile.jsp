<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>文件浏览</title>
</head>
<body>
<%
String path = request.getParameter("path");
if(path==null || path.isEmpty())
	path="D:/";
File pathFile = new File(path);
out.println(path+"<hr/>");
String parentPath = pathFile.getParent();
if(parentPath!=null && !parentPath.isEmpty()){
	parentPath = parentPath.replace("\\", "/");
	out.println("<a href=\"?path="+parentPath+"\">上级目录</a><br/>");
}
File fileArr[] = pathFile.listFiles();
for(File file:fileArr){
	if(file.isDirectory()){
		String filePath = file.getPath().replace("\\", "/");
		out.println("<a href=\"?path="+filePath+"\">"+file.getName()+"</a>");
	}
	else
		out.println(file.getName());		
	out.println("<br/>");
}
%>
</body>
</html>