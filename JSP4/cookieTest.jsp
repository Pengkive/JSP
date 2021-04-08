<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>WebContent/JSP4/cookieTest.jsp</h1>
		
		
	<%

	//쿠키값 사용하기(받아오기)
	Cookie[] cookies = request.getCookies();
	
	String name = "";
	String value = "";
	
	if(cookies != null){
		
		for(int i=0;i<cookies.length;i++){
			//특정 쿠키정보를 가져오기 => 쿠키의 이름만 비교해서 값을 사용
					if(cookies[i].getName().equals("CookName")){
						name = cookies[i].getName();
						value = cookies[i].getValue();
							
					}
			
		}
	}
	
	%>	

		
   <h2> 쿠키 이름:<%=name %> , 쿠키값 : <%=value %></h2>
   
   <hr>  
   
   <h2> 클라이언트 </h2>
   <input type="button" value="쿠키값 생성(저장)" 
          onclick="location.href='cookieSet.jsp'"
   >
    
 
   <input type="button" value="쿠키값 삭제(제거)" 
          onclick="location.href='cookieDel.jsp'"
   > <br>
      
      
      
</body>
</html>