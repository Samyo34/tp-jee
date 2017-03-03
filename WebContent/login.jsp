<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Login</title>
<%-- <% 
	//	request.getSession().invalidate();
	String login = (String) request.getSession().getAttribute("INVALIDE");
	boolean res = false;
	if(login == null){
		res = true;
	}
%> --%>
</head>
<body>
<form method="post" action="./login" >
		Login : <input type="text" name="login" value="pseudo"/>
  		password : <input type="password" name="mdp"/>
  		<input type="submit" value="connexion"/>
</form>
<%-- <c:choose>
<c:when test="${res eq true}">
<p>Erreur de connexion pour l'utilisateur <%= login %></p>
<c:out value="Erreur de connexion pour l'utilisateur ${login}"/>
</c:when>
</c:choose> --%>
</body>
</html>