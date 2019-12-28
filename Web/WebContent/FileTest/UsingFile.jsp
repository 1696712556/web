<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>文件操作</title>
</head>
<body>
<%
String path = "F:\\Java";
File dirFile = new File(path);
File existFile = new File(path,"existFile.txt");
File notExistFile = new File(path,"notExistFile.txt");
%>
目录<%=dirFile.getPath() %>是否存在：<%=dirFile.exists() %><br/>
文件<%=existFile.getPath() %>是否存在：<%=existFile.exists() %><br/>
文件<%=notExistFile.getPath() %>是否存在：<%=notExistFile.exists() %><br/>
文件<%=existFile.getPath() %>是否可读取：<%=existFile.canRead() %><br/>
文件<%=existFile.getPath() %>是否可写入：<%=existFile.canWrite() %><br/>
文件<%=existFile.getPath() %>是否可执行：<%=existFile.canExecute() %><br/>
<%if(existFile.canWrite()){ %>
<%
FileWriter fw = new FileWriter(existFile.getPath());
fw.write("这是FileTest的测试文件\n");
fw.write("JSP课程文件学习\n");
fw.close();
out.println(existFile.getPath()+"的内容：<br/>");
FileReader fr = new FileReader(existFile.getPath());
int c = fr.read();
while(c!=-1){
	if(c=='\n'){
		out.print("<br/>");
	}
	else
		out.print((char)c);
	c = fr.read();
}
fr.close();
%>
<%} %>
</body>
</html>