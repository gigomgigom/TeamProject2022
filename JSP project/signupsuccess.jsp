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

	<h3>���������� ȸ�������� �Ϸ�Ǿ����ϴ�!</h3>
	
	<h3>���ϵ帳�ϴ�! ����� ������ ���������� ��ϵǾ����ϴ�.</h3>
	
	<h3>�α��� ����� �����ڸ�忡���� �����մϴ�!</h3>
	<form>
	<input type = "button" value = "Move to user space." onClick = "goUser()">
	
	<input type = "button" value = "Move to admin mode." onClick = "goAdmin()">
	</form>
</body>
</html>