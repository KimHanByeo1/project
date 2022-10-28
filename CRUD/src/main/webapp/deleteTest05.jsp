<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%request.setCharacterEncoding("utf-8"); %>

	<h3>삭제결과</h3>
	사용자 ID : <%=request.getAttribute("userid") %> <br>
	<br><br>
	<%session.invalidate(); %>
	상기의 정보로 삭제되었습니다. 감사합니다.
	
</body>
</html>