<%@ page import="java.util.List"%>
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

	<%
		List<String> nombres= (List<String>)request.getAttribute("nombres");
	%>
	<c:forEach var="nombre" items="$(nombres)">
		<c:out value="$(nombre)">
			
		</c:out><br>
	
	</c:forEach>
	


</body>
</html>