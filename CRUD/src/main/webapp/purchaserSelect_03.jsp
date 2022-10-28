<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form method = "post" name = "customerInfo">
		사용자 ID : <input type = "text" name = "id" size = "10" readonly="readonly" value = "<%=request.getAttribute("userid") %>"> <br>
		이름 : <input type = "text" name = "name" size = "10" value = "<%=request.getAttribute("name")%>"> <br>
		연락처 : <input type = "text" name = "tel" size = "30" value = "<%=request.getAttribute("tel")%>"> <br>
		주소 : <input type = "text" name = "address" size = "70" value = "<%=request.getAttribute("address")%>"> <br>
		<input type = "submit" value = "수정" onclick = "javascript: form.action='purchaserSelect_05.jsp'">
		<input type = "submit" value = "삭제" onclick = "javascript: form.action='purchaserSelect_04.jsp'">
	</form>
	
</body>
</html>