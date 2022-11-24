<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JDBC Connection Test</title>
</head>
<body>
	<%
	Connection conn = null;
	String driverName = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/thursday";
	String username = "root";
	String password = "root";
	
	
	try {
		Class.forName(driverName);
		
		conn = DriverManager.getConnection(url, username, password);
		
		}
	catch (ClassNotFoundException e) {
	out.println(">> Connection failed : need to copy the driver!");		
	}
	catch (SQLException e) {
		out.println(">> connection failed : need to check the SQL commandline!");
	}
	
	%>
</body>
</html>