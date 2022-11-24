<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%@ include file = "connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	
/* 	Statement stmt = null; //스테이트먼트객체로 생성된문구
	
	try{
		
		String sql = "INSERT INTO member(id, passwd, name) VALUES ('" + id + "', '" + pwd + "', '" + name + "')";
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		out.println("Inserted successfully");
	} catch(SQLException ex) {
		out.println("Insert failed");
		out.println("SQLException : " + ex.getMessage());
	} finally {
		if(stmt != null)
			stmt.close();
		if(stmt != null)
			conn.close();
	} */
	
	 PreparedStatement pstmt = null; //preparedstatement 객체
	
	try {
		String sql = "INSERT INTO member(id, passwd, name) VALUES (?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		pstmt.executeUpdate();
		out.println("Inserted successfully");
	} catch(SQLException ex) {
		out.println("Insert failed");
		out.println("SQLException : " + ex.getMessage());
	} finally {
		if(pstmt != null)
			pstmt.close();
		if(conn != null)
			conn.close();
	} 
	
	 %>
</body>
</html>