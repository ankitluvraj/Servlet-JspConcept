<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<title>Yahoo!!</title>
<!-- Bootstrap core CSS -->
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 60px;
	background-color: #f5f5f5;
}

.footer .container {
width: auto;
max-width: 680px;
padding: 0 15px;
}
</style>
</head>

<body>

	<nav role="navigation" class="navbar navbar-default">

		<div class="">
			<a href="/" class="navbar-brand">Brand</a>
		</div>

		<div class="navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="/todo.do">Todos</a></li>
				<li><a href="http://www.in28minutes.com">In28Minutes</a></li>
			</ul>
			<!-- <ul class="nav navbar-nav navbar-right">
				<li><a href="/login.do">Login</a></li>
			</ul> -->
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/logout.do">Logout</a></li>
			</ul>
		</div>

	</nav>

	<div class="container">
		<H1>Welcome ${name}</H1>

		Your Todos are
		<ol>
			<c:forEach items="${todos}" var="todo">
				<li>${todo.name}&nbsp;<a
					href="/delete.do?todo=${todo.name}">Delete</a></li>
			</c:forEach>
		</ol>

		<p>
			<font color="red">${errorMessage}</font>
		</p>
		<!-- <form method="POST" action="/todo.do"> -->
		<a href="/add-todo.do?todo"> add new todo  </a>
	</div>

	<footer class="footer">
		<div class="container">
			<p>footer content</p>
		</div>
	</footer>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>


<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- Bootstrap core CSS --> <!-- location of web file -->
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
	
<title>todo</title>
</head>

<body>

	<p>Welcome : ${name}</p>
	<h1>Your todo are:</h1>

	<ol>
		<c:forEach items="${todos}" var="todo">
			<li>${todo}</li>
			<li>${todo.name}&nbsp; &nbsp; <a
				href="/delete.do?todo=${todo.name}">Delete</a></li>

		</c:forEach>
	</ol>

	<!-- createing another todos -->
	<form action="/todo.do" method="post">
		<a> <input type="text" name="todo" /><input type="submit"
			value="add" />

		</a>
	</form>
	<!-- for performance resion add below javascript libraries -->
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>

 --%>
 
 