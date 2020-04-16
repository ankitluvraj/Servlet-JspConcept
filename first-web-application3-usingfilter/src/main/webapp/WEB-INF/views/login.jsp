

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
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/login.do">Login</a></li>
			</ul>
		</div>

	</nav>

	<div class="container">
		<form action="/login.do" method="post">
			<p>
				<font color="red">${errorMassage}</font>
			</p>
			name: <input type="text" name="name" /> password:<input
				type="password" name="password" /> <input type="submit"
				value="login">
		</form>

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











<%-- 
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>yahoo... form jsp</title>
</head>
<body>
<form action="/login.do" method="post">
<p><font color="red">${errorMassage}</font></p>
name: <input type="text" name="name"/>
password:<input type="password" name="password"/>
<input type="submit" value="login">
</form>

</body>
</html>
<!-- 
how to create a form in html 
<form></form>

<form action="who is handle this form we need to specify them"></form>

except the value so we need to create a input type like that
Enter your Name <input type="text" name="name"/>

we would need a submit button 
see in above

// in this situation default get method will sork
// so using get mehtod my information is going through uri

<form action="/login.do" >
Enter your Name <input type="text" name="name"/>
<input type="submit" value="login">
</form>

// in this way we stop sending values to parameter
<form action="/login.do" method="post">




 --%>




