<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="deleteTest04.jsp" method = "post">
		사용자 ID : <input type = "text" name = "id" size = "10" readonly="readonly" value = "<%=session.getAttribute("ID") %>"> <br>
		이름 : <input type = "text" name = "name" size = "10" value = "<%=session.getAttribute("NAME")%>"> <br>
		연락처 : <input type = "text" name = "tel" size = "10" value = "<%=session.getAttribute("TEL")%>"> <br>
		주소 : <input type = "text" name = "address" size = "10" value = "<%=session.getAttribute("ADDRESS")%>"> <br>
			<input type = "submit" value = "삭제">
	</form>
	<%session.invalidate(); %>
	
</body>
</html>