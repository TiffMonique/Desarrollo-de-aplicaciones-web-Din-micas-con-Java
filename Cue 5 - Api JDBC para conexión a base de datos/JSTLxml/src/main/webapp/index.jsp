<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Autores desde xml</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
 	  <c:import var="lib" url="autores.xml" />
 	  <x:parse var="doc" xml='${lib}' />
 	  
 	  <div class="container">
 	  	<h2>Estos elementos son leidos desde un archivo XML con JSTL</h2>
 	  	<table class="table table-hover">
 	  		<thead>
 	  			<tr>
 	  				<th scope="col">Titulo</th>
 	  				<th scope="col">Autor</th>
 	  				<th scope="col">Paginas</th>
 	  			</tr>
 	  		</thead>
			<tbody>
				<x:forEach var="ob" select="$doc/autores/libros">
					<tr>
						<td><x:out select="$ob/titulo"/></td>
						<td><x:out select="$ob/autor"/></td>
						<td><x:out select="$ob/paginas"/></td>
						
					</tr>
				
				</x:forEach>
			</tbody>
 	  	</table>
 	  </div>
 	  
  


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>