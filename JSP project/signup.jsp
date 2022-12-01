<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>User SignUp</title>
</head>
<body>
<script type = "text/javascript">
	function Clear() {
		var suf = document.signupForm;
		suf.usid.value = "";
		suf.uspwd.value = "";
		suf.email.value = "";
	}
</script>
<script type = "text/javascript">
	function checkForm() {
		var suf = document.signupForm;
			if (suf.usid.value == "") {
				alert("You have to type ID!");
				suf.usid.focus();
				return false;
			} else (suf.uspwd.value == "") {
				alert("You have to type password!");
				suf.uspwd.focus();
				return false;
			} else (suf.email.value == "") {
				alert("You have to type e-mail!");
				suf.email.focus();
				return false;
			}
			suf.submit();
		}
</script>
	<h3>Home > Sign Up</h3>
	<hr>
	<form name="signupForm" action = "insertdb.jsp" method = "post">
	<h3>ID :</h3>
	<input type = "text" name = "usid">
	<h3>Password :</h3>
	<input type = "password" name = "uspwd">
	<h3>E-mail :</h3>
	<input type = "text" name = "email">
	<input type = "button" value = "rewrite" onclick = "Clear()">
	<input type = "button" value = "signup" onclick = "checkForm()">
	</form>
</body>
</html>
