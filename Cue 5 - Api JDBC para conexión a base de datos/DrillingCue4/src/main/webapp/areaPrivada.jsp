<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Area Privada</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>


<form method="post" class="my-login-validation" action="Deslogueo">
	<nav class="navbar navbar-dark bg-primary">
	<button class="btn  btn-primary" type="submit" name="cerrar">Cerrar Sesión</button>
 	<span class="navbar-text">
    	Bienvenido <%=request.getSession().getAttribute("userid") %>
  	</span>
	</nav>
	<h1>Area Privada</h1>
  	<p>Si estas viendo esta pagina, es porque estas logueado correctamente y el nombre de usuario esta guardado en la sesion</p>
</form>
 
<sql:setDataSource var="myDS" driver="oracle.jdbc.driver.OracleDriver"
url="jdbc:oracle:thin:@//localhost:1521/xe" user="MRENE" password="manzana1"/>
<sql:query dataSource="${myDS}" var="result">
	SELECT * FROM DEPARTAMENTO
</sql:query>

<table class = "table table-hover table-dark">
	<thead>
		<tr>
			<th scope ="col"># Departamento</th>
			<th scope ="col">Nombre Departamento</th>
			<th scope ="col">Ubicación Departamento</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach var ="row" items="${result.rows}">
			<tr>
				<td> <c:out value="${row.NUMDEPTO}"></c:out> </td>
				<td> <c:out value="${row.NOMDEPTO}"></c:out> </td>
				<td> <c:out value="${row.UBICACIONDEPTO}"></c:out> </td>					
			</tr>
		
		</c:forEach>
	</tbody>
	
</table>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>