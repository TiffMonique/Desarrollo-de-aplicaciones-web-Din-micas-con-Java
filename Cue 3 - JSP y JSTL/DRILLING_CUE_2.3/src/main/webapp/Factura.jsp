<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Factura</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>

<p>Nombre Completo: <%=request.getAttribute("nombre")%></p>

<p>Empresa: <%=request.getAttribute("empresa")%></p>

<p>Ciudad: <%=request.getAttribute("ciudad")%></p>

<p>País: <%=request.getAttribute("pais")%></p>

<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">Producto</th>
      <th scope="col">Descripcion</th>
      <th scope="col">Valor unidad</th>
      <th scope="col">Cantidad</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Mother Board</td>
      <td>ASUS LGA1200</td>
      <td>$249000</td>
      <td><%=request.getAttribute("cantidad1")%><td>
      <td><%=request.getAttribute("sub1")%></td>
      
    </tr>
    <tr>
      <td>RAM</td>
      <td>DDR4 8GB 2400MHz Kingston</td>
      <td>$45990</td>
      <td><%=request.getAttribute("cantidad2")%><td>
      <td><%=request.getAttribute("sub2")%></td>
    </tr>
    <tr>	
      <td>Micro</td>
      <td>i7 10700 8 Cores Hasta 4.8Ghz</td>
      <td>$379000</td>
      <td><%=request.getAttribute("cantidad3")%><td>
      <td><%=request.getAttribute("sub3")%></td>
    </tr>
    
    <tr>	
      <td>Tarjeta de video</td>
      <td>MSI GeForce GTX 1650 D6 Gaming X 4GB GDDR6</td>
      <td>$219990</td>
      <td><%=request.getAttribute("cantidad4")%><td>
      <td><%=request.getAttribute("sub4")%></td>
    </tr>
  </tbody>
</table>

<div class="card text-white bg-dark mb-3">
  <div class="card-header">Factura</div>
  <div class="card-body">
    <h5 class="card-title">VALOR TOTAL NETO</h5>
    <p class="card-text">$<%=request.getAttribute("totalNeto")%></p>
    <h5 class="card-title">Descuento</h5>
    <p class="card-text">10%</p>
    <h5 class="card-title">VALOR TOTAL</h5>
    <p class="card-text">$<%=request.getAttribute("total")%></p>
  </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>