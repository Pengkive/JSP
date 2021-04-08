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
	<h1>WebContent/JSP5/insertPro.jsp</h1>
	
	<%
		// 이전페이지에서 전달된 데이터 저장 -> 콘솔 출력
		// 한글처리
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw  = request.getParameter("pw");
		String email = request.getParameter("email");
	
		System.out.println("전달정보 : " +id+"/"+pw+"/"+email);
		
		//전달받은 데이터 DB에 저장
		//1 드라이버 로드
		//2 디비연결
		//3 sql 구문작성 & pstmt 객체 생성
		// 		? 추가
		//4 sql 실행
	

	  final String DRIVER= "com.mysql.jdbc.Driver";
      final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
      final String DBID = "root";
      final String DBPW = "1234";
		
      Connection conn 
      = DriverManager.getConnection(DBURL, DBID, DBPW);
      
      System.out.println("디비연결 성공!");
		
      String sql 
      ="insert into itwill_member (id, pw, email) values(?,?,?)";
	
      PreparedStatement pstmt = conn.prepareStatement(sql);
      
      pstmt.setString(1, id);			//insertform에 데이터가 들어와야지만 정상 실행된다.
      pstmt.setString(2, pw);			// 초기에는 !null 이기 때문에 데이버입력이 불가
      pstmt.setString(3, email);
 	//pstmt.setString(3, request.getParameter("email"));
 	
 	//4 sql 실행
 	  pstmt.executeUpdate();	
      
	System.out.println("회원정보 입력!");
	
	
	%>
	
	
	
	
	
</body>
</html>