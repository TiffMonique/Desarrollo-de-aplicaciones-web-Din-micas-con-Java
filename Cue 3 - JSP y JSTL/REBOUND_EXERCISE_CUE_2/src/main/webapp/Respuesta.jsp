<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CUE: JSP Y JSTL</title>
</head>
<body>

    <%
		String password= (String) request.getAttribute("password");
	%>


		
		<% out.println("Contraseña: "); %><c:out value="$(password)">
			
		</c:out><br>
	

</body>
</html>