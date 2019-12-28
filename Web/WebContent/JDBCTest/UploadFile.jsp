<%@page contentType="text/html"%>
<%@page pageEncoding="GB2312"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<html> 
    <head><title>上传文件操作-O'Reilly</title></head>
    <body>  
    <%
     MultipartRequest theMultipartRequest = new 
 		MultipartRequest
 		(request,"D:\\jiang\\",10*1024*1024) ; 
     Enumeration theEnumeration = 
 		theMultipartRequest.getFileNames() ;
     int fileCount =0 ; 
     String userName = theMultipartRequest.getParameter("userName");
     System.out.println(userName);
     while(theEnumeration.hasMoreElements()){
         fileCount++ ; 
         String fieldName = (String)theEnumeration.nextElement() ; 
         out.println("fieldName is "+fieldName);
         String fileName =theMultipartRequest.
 					getFilesystemName(fieldName) ;
         out.println("fileName is "+fileName);
         String contentType = theMultipartRequest.
 					getContentType(fieldName) ;
         out.println("contentType is "+contentType);
         
         File theFile = theMultipartRequest.getFile(fieldName) ;        
         
         out.println("属性名称："+fieldName+"<br>") ;
         out.println("文件名称："+fileName+"<br>") ;
         out.println("文件类型："+contentType+"<br>") ;  
         out.println("文件路径："+theFile.getAbsolutePath()+"<br>") ; 
         out.println("<br>") ;
         out.println("====================<br>") ;          
     }     
     out.println("成功上传文件数目："+fileCount  ) ;     
     %>   
      
    </body>
</html>
