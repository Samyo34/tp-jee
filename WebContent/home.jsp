<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Date" %>
<%@page import="libs.Book" %>
<%@page import="libs.Library" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:useBean id="user" beanName="user" scope="session" type="libs.UserBean"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header>
	
	<form method="GET" action="./private/logout" >
	  		Logout<input type="submit" value="logout"/>
	</form>
	<% user.getLogin();
		user.getLoginDate();
		//user.getPreviousLoginDate();
		String value = user.getPreviousLoginDate();
	%>
	${user.login}<br>
	<%= value %><br>
</header>
</body>
</html>