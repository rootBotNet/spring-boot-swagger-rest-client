<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>All Users</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
    rel="stylesheet">
</head>
<body>
	<div class="container">
		<table class="table table-striped">
			<caption>All Users</caption>

			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Password</th>
					<th>Phone</th>
					<th></th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${userDetails}" var="userDetails">
					<tr>
						<td>${userDetails.id}</td>
						<td>${userDetails.name}</td>
						<td>*****************</td>
						<td>${userDetails.phone}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
            <a class="btn btn-success" href="/register">Add New User</a>
        </div>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>