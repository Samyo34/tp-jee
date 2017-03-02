<%@page import="libs.Book"%>
<%@page import="libs.Library"%>
<%@page import="java.util.ArrayList"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Recherche</title>
<%@include file="./head.jsp" %>
</head>
<body>
<%@include file="./header.jsp" %>
	<%
		String criteria = request.getParameter("criteria");
		ArrayList<Book> books = Library.getInstance().search(criteria);
		pageContext.setAttribute("books",books);
		int size = books.size();
	%>
	<c:choose>
		<c:when test="${empty books}"><c:out value="Aucun resultat trouve"/></c:when>
		<c:otherwise>
				<table>
					<thead>
						<th>Title</th>
						<th>Pages</th>
					</thead>
					<tbody>
						<c:forEach items="${books}" var="item">
							<tr>
								<td>${item.title}</td>
								<td>${item.nbPages}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
		</c:otherwise>
	</c:choose>
<%@include file="./footer.jsp" %>
</body>
</html>