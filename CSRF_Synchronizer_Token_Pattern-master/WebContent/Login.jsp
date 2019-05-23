<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
</head>
<body>

	<div align="center"><h2>Login Form</h2>
	<br>
	<form method="post" action="LoginController">
		<label>Username : </label><input type="text" name="username" /> 
		<label>Password : </label><input type="password" name="password"/>
		<c:if test="${not empty sessionScope.invalidCredentials}">
			<div id="message" style="color:red;">Incorrect !</div>
		</c:if>
		<input type="submit" value="Login">
	</form>
	</div>
	
</body>
</html>
