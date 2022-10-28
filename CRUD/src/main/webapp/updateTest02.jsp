<%@page import="java.nio.ReadOnlyBufferException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보 수정</title>
</head>
<body>

	<h4>아이디를 수정후 확인 버튼을 누르세요.</h4>
	
<%

	request.setCharacterEncoding("utf-8");

	String userid = request.getParameter("userid");
	String id = null;
	String name = null;
	String tel = null;
	String address = null;
	
	String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	String query = "select userid, name, tel, address from purchaserinfo where userid = '" + userid + "'";
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();

		ResultSet rs = stmt_mysql.executeQuery(query);

		while(rs.next()) {
			id = rs.getString(1);
			name = rs.getString(2);
			tel = rs.getString(3);
			address = rs.getString(4);
		}
		
		conn_mysql.close();
		
	} catch(Exception e) {
		e.printStackTrace();
	}

%>

	<form action="updateTest03.jsp" method = "post">
		사용자 ID : <input type = "text" name = "id" size = "10" readonly="readonly" value = "<%=id %>"> <br>
		이름 : <input type = "text" name = "name" size = "10" value = "<%=name%>"> <br>
		연락처 : <input type = "text" name = "tel" size = "10" value = "<%=tel%>"> <br>
		주소 : <input type = "text" name = "address" size = "10" value = "<%=address%>"> <br>
			<input type = "submit" value = "수정">
	</form>







</body>
</html>