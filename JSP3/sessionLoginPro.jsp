<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/JSP3/sessionLoginPro.jsp</h1>
	
	
	<%	
		// 한글처리 (인코딩필요시) ** 파라미터 받기전에 넣어야함.
		//request.setCharacterEncoding("UTF-8");
		
		// 전달받은 정보 (파라미터 저장) id, pw **attribute는 set 해야 쓸수있음
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		String dbID = "itwill";
		String dbPW = "1234";
		
		
		
		//A.equals(B) 문자열 A와 문자열 B의 값이 동일한지 체크()
		// 로그인 처리 로직 
		if(id.equals(dbID)){
			// 아이디가 동일 (회원이다)
			if(pw.equals(dbPW)){
				//아이디 + 비밀번호 동일 => 로그인 성공!
				// 세션값 생성(ID값)
				session.setAttribute("id", id);      //id 변수를 그대로 넣어도됨
				// 페이지 이동
				response.sendRedirect("sessionMain.jsp");
			}else{
				//비밀번호 오류
				out.println("비밀번호 오류!");
			}
						
		}else{
			// 아이디가 다름(비회원이다)
			 out.println("아이디 정보가 없습니다! (비회원)");
		}
		

	%>

	
	
	
	
	
	
	
	
	
</body>
</html>