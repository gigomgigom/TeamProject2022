<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MemberShip</title>
</head>
<body>
<script type = "text/javascript">
	function goMain() {
		location.href="main.jsp";
	}
	function goDraw() {
		location.href="withdraw.jsp";
	}
</script>
	<h3>Home > 회원전용공간</h3>
	<hr>
	<h3>환영합니다!</h3>
	<h3>여기는 회원 전용 공간입니다.</h3>
	<h3>회원을 탈퇴하려면 버튼을 눌러주세요.</h3>
	
	<input type = "button" value = "메인화면으로 가기" onClick = "goMain()">
	<input type = "button" value = "회원탈퇴하기" onClick = "goDraw()">
</body>
</html>