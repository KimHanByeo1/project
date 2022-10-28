<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<%
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String address = request.getParameter("address");
	
	session.setAttribute("ID", id);
	session.setAttribute("NAME", name);
	session.setAttribute("TEL", tel);
	session.setAttribute("ADDRESS", address);
	
	String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	PreparedStatement ps = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String query = "insert into purchaserinfo (userid, name, tel, address, insertdate) values (?,?,?,?,now())";
		
		ps = conn_mysql.prepareStatement(query);
		
		ps.setString(1, id);
		ps.setString(2, name);
		ps.setString(3, tel);
		ps.setString(4, address);
		
		ps.executeUpdate();
		
		conn_mysql.close();
		
	} catch(Exception e) {
		e.printStackTrace();
	}

	response.sendRedirect("insertTest03.jsp");
	
%>