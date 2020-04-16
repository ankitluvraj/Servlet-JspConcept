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
<%
System.out.println("hello servlet");
System.out.println(request.getParameter("name"));
//java.util.Date date=new  java.util.Date();
Date date=new Date();
%>

<div>current date is <%=date%> </div>

My name is ${name}  and password is ${password}
</body>
</html>
<%--  ${name of the attribute define in the servlet }reading attribute from servlet --%>
<%--  
${} -> expression langauge 
: is used to dynamically puckup content from request session and other things --%>


<%-- 
Note :- in real time we will not used scriptlet is bad practice 
because in real world we can not write any business logic in view layer
so in real time we can heavy use expression langauge or jstl tag

<% %> :- symbol is called scriptlet 
so inside scriptlet we can write java code but not recommended
<%=date%> :- symbol is called scriptlet expression
:- using this way we can access the java referance variable
--%>