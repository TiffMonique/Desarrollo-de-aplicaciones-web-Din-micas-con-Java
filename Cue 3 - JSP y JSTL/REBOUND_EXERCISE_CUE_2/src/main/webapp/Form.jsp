<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<h1>Introduzca una contrase�a</h1>
	
	<form action="/Raiz" method="post">
	
	
	Contrase�a: <input type="text" name="password"><br>
	
	<input type="submit" value="Enviar">
	</form>
	
</body>
</html>