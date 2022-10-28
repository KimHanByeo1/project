<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<%
	
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	
	String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	PreparedStatement ps = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String query = "delete from purchaserinfo where userid = '" + id + "'";
		
		ps = conn_mysql.prepareStatement(query);
		
		ps.executeUpdate();
		
		conn_mysql.close();
		
		/* session.setAttribute("ID", id); */
		request.setAttribute("userid", id);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("deleteTest05.jsp");
		dispatcher.forward(request, response);
		
	} catch(Exception e) {
		e.printStackTrace();
	}

	/* response.sendRedirect("deleteTest05.jsp"); */
	
%>