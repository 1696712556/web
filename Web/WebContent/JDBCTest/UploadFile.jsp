<%@page contentType="text/html"%>
<%@page pageEncoding="GB2312"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<html> 
    <head><title>�ϴ��ļ�����-O'Reilly</title></head>
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
         
         out.println("�������ƣ�"+fieldName+"<br>") ;
         out.println("�ļ����ƣ�"+fileName+"<br>") ;
         out.println("�ļ����ͣ�"+contentType+"<br>") ;  
         out.println("�ļ�·����"+theFile.getAbsolutePath()+"<br>") ; 
         out.println("<br>") ;
         out.println("====================<br>") ;          
     }     
     out.println("�ɹ��ϴ��ļ���Ŀ��"+fileCount  ) ;     
     %>   
      
    </body>
</html>
