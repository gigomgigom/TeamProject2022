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
	<h3>Home > ȸ���������</h3>
	<hr>
	<h3>ȯ���մϴ�!</h3>
	<h3>����� ȸ�� ���� �����Դϴ�.</h3>
	<h3>ȸ���� Ż���Ϸ��� ��ư�� �����ּ���.</h3>
	
	<input type = "button" value = "����ȭ������ ����" onClick = "goMain()">
	<input type = "button" value = "ȸ��Ż���ϱ�" onClick = "goDraw()">
</body>
</html>