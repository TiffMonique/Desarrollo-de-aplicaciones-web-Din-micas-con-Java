<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Elementos de Java Server Page</h1>
<ul>
	<li>Expresiones</li><br>
	Tu host es : <%= request.getRemoteHost() %>
	
	<li>Scriplets</li><br>
	<% out.println("Esto es un scriptle"); %>
	
	<li>Declaraciones con expresiones<li>
	<%! private int contador=0; %>
	acceso a al pagina desde el inicio del servidor: <%=++ contador%>
	
	</li>Directivas con expresiones<li>
	<%@ page import = "java.util.*" %>
	
	fecha actual :<%=  new Date() %>

</ul>
</body>
</html>