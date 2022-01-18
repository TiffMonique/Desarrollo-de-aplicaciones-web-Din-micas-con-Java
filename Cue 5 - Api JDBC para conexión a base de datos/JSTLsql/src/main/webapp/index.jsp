<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PRUEBA SQL</title>

<!--Implementacionbootstrapcss-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.cs s" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!--FinImplementacionbootstrapcss-->


</head>
<body>

<h1>Demostración del uso del tag sql:</h1>
<h2>Registros correspondientes a la tabla departamentos</h2>
<sql:setDataSourcevar="myDS" driver="oracle.jdbc.driver.OracleDriver"
url="jdbc:oracle:thin:@//localhost:1521/xe" user="system2" password="123"/>


<sql:query dataSource="${myDS}" var="result">
SELECT * FROM DEPARTAMENTO
</sql:query>

<table class="table table-dark" border="1">
<thead>


<tr>
<th scope="col">N°Departamento</th>
<th scope="col">NombreDepartamento</th>
<th scope="col">UbicaciónDepartamento</th>
</tr>
</thead>
<tbody>
<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.NUMERODEPTO}"/></td>
<td><c:out value="${row.NOMBDEPTO}"/></td>
<td><c:out value="${row.UBICACIONDEPTO}"/></td>
</tr>
</c:forEach>

</tbody>
</table>



<!--Implementacion bootstrap js-->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.j s"
integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
crossorigin="anonymous"></script>

<script
src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
crossorigin="anonymous"></script>
<!--FinImplementacionbootstrapjs-->

</body>
</html>