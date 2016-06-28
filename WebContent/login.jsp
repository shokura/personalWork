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
		<!--< name＝java側に値を持っていく為の変数 value=テキストフィールド内 label=国際化時の値 />-->
		<s:textfield name="name" value="" label="%{getText('login.user')}" />
		<s:textfield name="password" value=""
			label="%{getText('login.password')}" />
		<!-- align=配置指定 左寄せ value=国際化時の値 -->
		<s:submit align="left" value="%{getText('login.signIn')}" />
	</s:form>
	<br>
</body>
</html>