<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body> 
	<form action="/register" method=POST>
	<p><font color="red"> ${ errorMessage } </font></p>
		Name: <input type="text" name="name">
		</br>
		Phone: <input type="text" name="phone">
        </br>
		Password <input type="password" name="password">
		<input type="submit" value="Register"/>
	</form>
</body>
</html>