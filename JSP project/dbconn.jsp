<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
	<%
	Connection conn = null;
	try {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "skk";
		String password = "1111";
		String drivername = "oracle.jdbc.driver.OracleDriver";
		
		Class.forName(drivername);
		conn = DriverManager.getConnection(url, user, password);
	}catch (ClassNotFoundException e) {
			out.println(">> Connection failed : need to copy the driver!");		
	}catch (SQLException e) {
				out.println(">> connection failed : need to check the SQL commandline!");
	}
%>
</body>
</html>