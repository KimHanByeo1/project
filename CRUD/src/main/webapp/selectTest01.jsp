<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스에서 불러오기</title>
</head>
<body>

	<h3>고객명단 리스트</h3>

<%

	request.setCharacterEncoding("utf-8");
	
	int cnt = 0;

	String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	String query = "select userid, name, tel, address, insertdate from purchaserinfo";
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();

		ResultSet rs = stmt_mysql.executeQuery(query);
%>

		<table border = "1" align = "center">
			<tr>
				<th>User Id</th>
				<th>User Name</th>
				<th>User Phone</th>
				<th>User Address</th>
				<th>User Insert Date</th>
			</tr>
			
	<% while(rs.next()) { %>
	
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>		
			<td><%=rs.getString(3) %></td>		
			<td><%=rs.getString(4) %></td>		
			<td><%=rs.getString(5) %></td>		
		</tr>
		
<%
			cnt++;
		}
%>
	</table>	
<%
		conn_mysql.close();
		
	} catch(Exception e) {
		e.printStackTrace();
	}

%>

	<br>
	<br>
	총 인원은 <%=cnt %>명 입니다.

</body>
</html>