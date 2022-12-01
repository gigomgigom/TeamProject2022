<!-- 얘부터 만들어야되용! -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	
	PreparedStatement pstmt = null;
	
	try {
		String sql = "select mem_id from member where mem_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
	}
%>
</body>
</html>