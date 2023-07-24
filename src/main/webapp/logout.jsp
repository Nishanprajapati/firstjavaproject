<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%  
           String sescon = (String)session.getAttribute("username");  
           session.invalidate();
          
         %>

         	<jsp:forward page="login.jsp"/>

	
</body>
</html>