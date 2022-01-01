<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="i" begin="1" end="20">

	<c:choose>
		<c:when test="$(i%2=0)">
			<c:out value="Numero $(i) es par"></c:out><br>
		</c:when>
		<c:otherwise>
			<c:out value="Numero $(i)"></c:out><br>
		</c:otherwise>
	</c:choose>
	
</c:forEach>

</body>
</html>