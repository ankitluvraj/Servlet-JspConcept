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







 -->



