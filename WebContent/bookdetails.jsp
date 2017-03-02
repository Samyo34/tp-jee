<%@page import="libs.Book"%>
<%@page import="libs.Library"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Détails</title>
<%@include file="./head.jsp" %>

</head>
<body>
<%@include file="./header.jsp" %>
	<% String idString = request.getParameter("id");
		int idBook = Integer.parseInt(idString);
	%>

 	<% 
 		Book b = Library.getInstance().getById(idBook);
 	 	pageContext.setAttribute("Book",b);
		
	%>
<br>${Book.id}
<h1>${Book.title}</h1>

<p>${Book.nbPages}</p>
<p>${Book.description}</p>
<p>${Book.keywords}</p>

	
<%@include file="./footer.jsp" %>
</body>
</html>