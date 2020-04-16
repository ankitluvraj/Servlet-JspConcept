<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>todo</title>
</head>
<body>

<%-- Weelcome ${name} --%> 

<%-- <p>Your todos are: </p>
<p>${todos}</p>
 --%>
 
 
 <p>Welcome : ${name}</p>  
 <h1>Your todo are:</h1>

<ol>
<c:forEach items="${todos}" var="todo">
<%-- <li>${todo}</li> --%>
<li>${todo.name} &nbsp; &nbsp;  <a href="/delete.do?todo=${todo.name}">Delete</a></li>

</c:forEach>
</ol>

<!-- createing another todos -->
<form action="/todo.do" method="post"><a>
<input type="text" name="todo"/><input type="submit" value="add"/>

</a></form>
</body>
</html>

<!-- jstl working 
step 1 we need to add dependency jar in pom.xml 
step 2 we need to import tag library.
step 3 use tag <ol></ol> using this tag we can show list of item in html

 <!-- &nbsp;:-> denotes some space in html--> 
 
 