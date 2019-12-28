<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查看留言</title>
</head>
<body>
	<div>
		<%
			Vector<String[]> v = (Vector<String[]>)application.getAttribute("message");
			
			if(v==null || v.isEmpty()){
				out.println("暂时还没有留言呢");
			}
			else{
				for(int i=v.size()-1;i>=0;i--){
					String[] message = v.get(i);
					out.println("第"+(i+1)+"楼");
					out.println("<br/>姓名:"+message[0]);
					out.println("<br/>标题:"+message[1]);
					out.println("<br/>内容:"+message[2]);
					out.println("<hr/>");
				}
			}
		%>

	</div>
</body>
</html>