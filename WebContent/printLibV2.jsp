<%@page import="libs.Book" %>
<%@page import="libs.Library" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Print library</title>
<%@include file="./head.jsp" %>
</head>
<body>
<%@include file="./header.jsp" %>

<form method="get" action="./search.jsp">
  Recherche:<br>
  <input type="text" name="criteria" value="Web">
  <input type="submit" value="Submit">
</form>
	<table class="table"></table>
	<script>
		var data = [
					<%
					for(int i = 0; i<Library.getInstance().getAll().size();i++){
					%>
							[
							 "<%=Library.getInstance().getAll().get(i).getId() %>" ,
							 "<%=Library.getInstance().getAll().get(i).getTitle() %>" ,
							 "<%=Library.getInstance().getAll().get(i).getNbPages() %>"
							],
								
					<%
					}
					%>	
					];
		
		$(document).ready(function(){
			var table = $(".table").DataTable({
				data:data,
				columns:[{title:"Id"},{title:"Titre"},{title:"Pages"}]
			});
			$("tbody").on("click","tr",function(){
				var data = table.row(this).data();
				document.location = "./bookdetails.jsp?id="+data[0];
			});			
		});
	</script>
	<%@include file="./footer.jsp" %>
</body>
</html>