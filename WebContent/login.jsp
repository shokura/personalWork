<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!-- Struts2 -->
<%@ taglib prefix="s" uri="/struts-tags"%>
<!-- 国際化 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<s:form action="LoginAction">
		<div class="form-item">
			<font color="red"><s:fielderror>
					<!-- エラーメッセージ -->
					<div class="errorMessage">
						<s:property value="errorMesseage" />
					</div>
					<!-- メールアドレス -->
					<s:param value="%{'emailAddress'}" />
				</s:fielderror></font> <label for="email"></label> <input name="emailAddress"
				placeholder=" <s:text name="LoginUser.EmailAddress" />"
				maxlength="50"></input>
		</div>
		<div class="form-item">
			<font color="red"><s:fielderror>
					<!-- パスワード -->
					<s:param value="%{'password'}" />
				</s:fielderror></font> <label for="password"></label> <input type="password"
				name="password" placeholder=" <s:text name="LoginUser.Password" />"
				maxlength="32"></input>
		</div>
		<div class="button-panel">
			<button type="submit" class="button">
				<h4>
					<s:text name="LoginUser.Title" />
				</h4>
			</button>
		</div>
	</s:form>
</body>
</html>