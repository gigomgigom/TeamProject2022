<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
<%@ include file = "dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("usid");
	String pwd = request.getParameter("uspwd");
	String email = request.getParameter("email");
	
	PreparedStatement pstmt = null;
	
	try {
		String sql = "insert into member values(?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, email);
		pstmt.executeUpdate();
	} catch(SQLException ex) {
		out.println("delete failed");
		out.println("SQLException : " + ex.getMessage());
	} finally {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
		response.sendRedirect("signupsuccess.jsp");
	}
%>
</body>
</html>