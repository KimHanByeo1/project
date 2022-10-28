<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% request.setCharacterEncoding("utf-8");%>
	
	사용자 ID : <%=request.getAttribute("ID") %> <br><br>
	
	입력하신 정보가 없습니다. 다시 확인바랍니다. <br>
	<a href = "./deleteTest.jsp">돌아가기</a>
	
</body>
</html>