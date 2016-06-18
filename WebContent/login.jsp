<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ログイン画面</title>
</head>
<body>
	<br>
	<br>
	<!-- ユーザー名とパスワードを入力 -->
	<s:form action="LoginAction">
		<s:textfield name="name" value=""
			label="%{getText('login.user')}" />
		<s:textfield name="password" value=""
			label="%{getText('login.password')}" />
		<s:submit align="left" value="%{getText('login.signIn')}" />
	</s:form>
	<br>
</body>
</html>