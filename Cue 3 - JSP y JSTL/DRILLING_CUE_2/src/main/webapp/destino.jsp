<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Factura</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>


    <%
		List<Integer> cantidades= (List<Integer>)request.getAttribute("cantidades");
    	int valor1, valor2, valor3, valor4, valor5;
    	double desc= 0.10;
    
    
    
	%>
	
	
	

      
  <table class="table table-striped table-dark " >
  <thead>
    <tr>
      <th scope="col">Producto</th>
      <th scope="col">Descripcion</th>
      <th scope="col">Valor Unidad</th>
      <th scope="col">Cantidad</th>
      <th scope="col"> </th>
    </tr>
  </thead>
  <tbody>
    <tr>
    
      <td>Mother Board</td>
      <td>ASUS LGA 1200</td>
      <td>$249000</td>
      <td><%
	
		out.print(cantidades.get(0));
	
%></td>
 	 <td><%
		valor1=cantidades.get(0)*249000;
		out.print(valor1);
 
	
%></td>
    </tr>
    <tr>
      <td>RAM</td>
      <td>DDR4 8GB 24000MHz Kingston</td>
      <td>$45990</td>
      <td><%
	
		out.print(cantidades.get(1));
	
%></td>
<td><%
		valor2 =cantidades.get(1)*45990;
		out.print(valor2);
	
%></td>

    </tr>
    <tr>
     <td>Micro</td>
      <td>i7 107000 8 Cores Hasta 4.8GHz</td>
      <td>$379000</td>
      <td><%
	
		out.print(cantidades.get(2));
	
%></td>
<td><%
		valor3=cantidades.get(2)*379000;
		out.print(valor3);
	
%></td>
    </tr>
    <tr>
     <td>Tarjeta de Video</td>
      <td>MSI GeForce GTX 1650 D6 Gaming X 4GB GDDR6</td>
      <td>$219990</td>
      <td><%
	
		out.print(cantidades.get(3));
	
%>></td>
<td><%
		valor4=cantidades.get(3)*219990;
		out.print(valor4);
	
%></td>
    </tr>
  </tbody>
</table>


 

<div class="container">
  <div class="row">
    <div class="col-4">
     <h3>Valor Total neto</h3>
 	 <h2><%valor5=valor1+valor2+valor3+valor4;
 			 out.print(valor5);%></h2>
    </div>
    
    <div class="col-4">
      <h3>Descuento</h3>
      <h2>10%</h2>
    </div>
    <div class="col-4">
       <h3>Valor Total </h3>
 	   <h2><%valor5=valor1+valor2+valor3+valor4;
 			 out.print(valor5*desc);%></h2>
    </div>
  </div>
</div>
	
	

</body>
</html>