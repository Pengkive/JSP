<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/JSP5/updateForm.jsp</h1>
	
	<%
		//회원정보 수정처리 방법
		//1. 기존의 정보와 상관없이 덮어쓰기(수정)
		//2. 기존의 정보를 확인 후 덮어쓰기 (수정)
	%>
	
	
	<form action="updatePro.jsp" method="post">
	아이디 : <input type="text" name="id"><br>
	비밀번호 : <input type = "password" name="pw"><br>
	이메일 : <input type = "text" name="email"><br>
		<input type="submit" value="가입하기">
		
	</form>
	
	
	<% 
	
	request.setCharacterEncoding("UTF-8");
	

	String id = request.getParameter("id");
	String pw  = request.getParameter("pw");
	String email = request.getParameter("email");

	System.out.println("전달정보 : " +id+"/"+pw+"/"+email);
		
	
	
	
	
	
	
	
	  final String DRIVER= "com.mysql.jdbc.Driver";
      final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
      final String DBID = "root";
      final String DBPW = "1234";


      Class.forName(DRIVER);
  	  out.print("드라이버 로드 성공! <br>");
      
      Connection con 
      = DriverManager.getConnection(DBURL, DBID, DBPW);
      
      System.out.println("디비연결 성공!");
		
      String sql 
      ="update itwill_member set email=? where id=? and pw=? ";
	
     PreparedStatement pstmt = con.prepareStatement(sql);

 		pstmt.setString(1,email);
  		pstmt.setString(2,id);
  		pstmt.setString(3,pw);
  	
  	//4단계 sql 구문 실행
  	
  	pstmt.executeUpdate(); // 실행할때 쿼리 없는걸로 String(x)
  	
  	System.out.print("정보 수정완료!");
      
	
	%>

	
</body>
</html>