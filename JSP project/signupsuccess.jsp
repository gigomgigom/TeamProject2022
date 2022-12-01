<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Sign up success</title>
</head>
<body>
<script type = "text/javascript">
	function goUser() {
		location.href="membership.jsp";
	}
	function goAdmin() {
		location.href="login.jsp";
	}
</script>

	<h3>정상적으로 회원가입이 완료되었습니다!</h3>
	
	<h3>축하드립니다! 당신의 정보가 정상적으로 등록되었습니다.</h3>
	
	<h3>로그인 기능은 관리자모드에서만 가능합니다!</h3>
	<form>
	<input type = "button" value = "Move to user space." onClick = "goUser()">
	
	<input type = "button" value = "Move to admin mode." onClick = "goAdmin()">
	</form>
</body>
</html>