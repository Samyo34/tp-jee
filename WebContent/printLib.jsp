<%@page import="libs.Book" %>
<%@page import="libs.Library" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <link rel="stylesheet" href="./assets/bootstrap/css/bootstrap.min.css" /> -->
<link rel="stylesheet" href="./assets/datatables.min.css" />
<script src="./assets/jquery/jquery-2.2.0.min.js"></script>
<!-- <script src="./assets/bootstrap/js/bootstrap.min.js"></script> -->
<script src="./assets/datatables.min.js"></script>
<title>print lib</title>
</head>
<body>
	<table class="table">
	<thead>
		<th>
			Id
		</th>
		<th>
			Title
		</th>
		<th>
			Nombre de page
		</th>
		<th>
			Description
		</th>
		<th>
			Mots clés
		</th>								
	</thead>
	<tbody>
		<%
			for(int i = 0; i<Library.getInstance().getAll().size();i++){
				%>
				<tr>
					<td>
						<%=
							Library.getInstance().getAll().get(i).getId()
						%>
					</td>
					<td>
						<%=
							Library.getInstance().getAll().get(i).getTitle()
						%>
					</td>
					<td>
						<%=
							Library.getInstance().getAll().get(i).getNbPages()
						%>
					</td>
					<td>
						<%=
							Library.getInstance().getAll().get(i).getDescription()
						%>
					</td>
					<td>
						<%
							for(int j = 0;j<Library.getInstance().getAll().get(i).getKeywords().toArray().length;j++){
								%>
								<%=Library.getInstance().getAll().get(i).getKeywords().toArray()[j] %>,
								<%
							}
						%>
					</td>																				
				</tr>
				<%
			}
		%>
		</tbody>
	</table>

</body>
</html>