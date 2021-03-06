<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>WebContent/fileupload/fileUploadPro.jsp</h1>
  
  <%
   // 파일 업로드 전 준비
   // 0) 해당 라이브러리 설치 (cos.jar)
   // 1) 파일이 저장될 위치 지정
   String path = request.getRealPath("/upload");
   out.println(path);
   
   System.out.println("파일저장되는 실제 경로 : "+path);
   
   // 2) 파일의 크기를 지정 -> 10MB
   int maxSize = 10 * 1024 * 1024;
   
   // 파일 업로드 => Multipart객체를 생성
   MultipartRequest multi 
      = new MultipartRequest(
    		  request,
    		  "C://upload",
    		  maxSize,
    		  "UTF-8",
    		  new DefaultFileRenamePolicy()
    		  );	
   
   System.out.println(" 파일 업로드 완료! ");
   
   // 이전페이지에서 전달해준 정보를 출력
   String name = multi.getParameter("name");
   String subject = multi.getParameter("subject");
   //String filename = multi.getParameter("filename");(x)
   
   String filename = multi.getFilesystemName("filename");
  String oFileName = multi.getOriginalFileName("filename");
   
  %>
  
  이름 : <%=name %><br>
  제목 : <%=subject %><br>
  파일 : <%=filename %><br>
 파일(원본) : <%=oFileName %><br> 
  
  



</body>
</html>