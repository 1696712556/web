<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>留言中</title>
</head>
<body>
	<%
		Vector<String[]> v = (Vector<String[]>)application.getAttribute("message");
		if(v==null)
			v = new Vector<String[]>();
		String[] newMessage = new String[3];
		request.setCharacterEncoding("utf-8");//设置request的编码方式，解决乱码问题
		newMessage[0] = request.getParameter("name");
		newMessage[1] = request.getParameter("title");
		newMessage[2] = request.getParameter("message");
		v.add(newMessage);
		application.setAttribute("message", v);
		response.setHeader("refresh", "2;URL=ShowMessage.jsp");
	%>
	留言成功！
</body>
</html>