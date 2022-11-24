<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "connection.jsp" %>
	<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	
	PreparedStatement pstmt = null;
	
	try {
		String sql = "delete from member where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		out.println("delete complete");
	} catch(SQLException ex) {
		out.println("delete failed");
		out.println("SQLException : " + ex.getMessage());
	} finally {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
	
	
	
	%>
</body>
</html>