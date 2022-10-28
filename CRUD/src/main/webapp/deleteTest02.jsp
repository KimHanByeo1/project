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

	<h4>삭제할 고객정보를 확인 후 버튼을 누르세요!</h4>
	
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
		
		if(id == null) {
			request.setAttribute("ID", userid);
			RequestDispatcher dispatcher = request.getRequestDispatcher("deleteErrorTest.jsp");
			dispatcher.forward(request, response);
			
		} else {
			session.setAttribute("ID", id);
			session.setAttribute("NAME", name);
			session.setAttribute("TEL", tel);
			session.setAttribute("ADDRESS", address);
			response.sendRedirect("deleteTest03.jsp");
			
		}
		
		
		conn_mysql.close();
		
	} catch(Exception e) {
		e.printStackTrace();
	}

%>








</body>
</html>