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
	<h1>WebContent/JSP5/deleteForm.jsp</h1>
	
	<%
	//ID, PW를 입력받아서 해당 회원을 탈퇴 (삭제하기)
	String del_id = request.getParameter("id");
	String del_pw = request.getParameter("pw");
	
	final String DRIVER = "com.mysql.jdbc.Driver";
	final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
	final String DBID = "root";
	final String DBPW = "1234";
	
	Class.forName(DRIVER);
	out.print("드라이버 로드 성공! <br>");
	
	Connection con = 
			DriverManager.getConnection(DBURL,DBID,DBPW);
			out.print("DB 연결 성공! (접속테스트) <br>");
			
			out.print("DB 연결 성공! (접속유지) :" +con+"<br>");
			
	String sql
		    ="delete from itwill_member where id=? and pw=?";	
			
			
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1,del_id);
	pstmt.setString(2,del_pw);
	pstmt.executeUpdate();
	
	System.out.println("회원정보 수정완료");

	
	%>
	
	
	
	
	
	
	
</body>
</html>