<%@page import="java.sql.ResultSet"%>
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
	<h1>WebContent/JSP5/select.jsp</h1>
	
	<%
		// 모든 회원의 정보를 출력 => 테이블 생성
	final String DRIVER = "com.mysql.jdbc.Driver";
	final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
	final String DBID = "root";
	final String DBPW = "1234";

	Class.forName(DRIVER);
			out.print("드라이버 로드 성공! <br>");
	
	Connection con = 
			DriverManager.getConnection(DBURL,DBID,DBPW);
			out.print("DB 연결 성공!<br>");
			
			
	String sql = "select * from itwill_member";
	
	PreparedStatement pstmt = con.prepareStatement(sql);		
			
			
	ResultSet rs = pstmt.executeQuery();		
			
			
	while(rs.next()){ 		
			
		String id = rs.getString("id");
		String pw = rs.getString("pw");
		String gender = rs.getString("gender");
		String email = rs.getString("email");	
		
		
		out.println("아이디 : "+id);
		out.println("비밀번호 : "+pw);
		out.println("성별 : "+gender);
		out.println("이메일 : "+email+"<br>");
		
		

	}
	
		out.println("회원정보 선택완료!");
		
	
	%>
	   
	   
	   
	   
	   
	   
	
</body>
</html>