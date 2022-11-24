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
	<form action="insert01.jsp" method = "post">
	<p> ID : <input type = "text" name = "id">
	<p> Password : <input type = "password" name = "pwd">
	<p> Name : <input type = "text" name = "name">
	
	<p> <input type = "submit" value = "Confirm">
	</form>
</body>
</html>