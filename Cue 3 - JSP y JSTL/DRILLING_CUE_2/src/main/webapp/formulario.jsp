<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UTILIZANDO LOS JSP</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>


</head>
<body>

<form method="post" action="/Informacion">
   <div class="form-row">
    <div class="form-group col-md-4 offset-md-1">
      <label for="nombre">Nombre Completo</label>
      <input type="text" class="form-control" name="nombre" placeholder="Su nombre...">
    </div>
    <div class="form-group col-md-4 offset-md-2">
      <label for="direccion">Direccion</label>
      <input type="text" class="form-control" name="direccion" placeholder="Su direccion...">
    </div>
  </div>
  
 
</form>


 
  <table class="table table-striped table-dark " method="post" action="/Informacion">
  <thead>
    <tr>
      <th scope="col">Producto</th>
      <th scope="col">Descripcion</th>
      <th scope="col">Valor Unidad</th>
      <th scope="col">Cantidad</th>
    </tr>
  </thead>
  <tbody>
    <tr>
    
      <td>Mother Board</td>
      <td>ASUS LGA 1200</td>
      <td>$249000</td>
      <td><input type="text" class="form-control" placeholder="cantidad" name="cantidad1"></td>
    </tr>
    <tr>
      <td>RAM</td>
      <td>DDR4 8GB 24000MHz Kingston</td>
      <td>$45990</td>
      <td><input type="text" class="form-control" placeholder="cantidad" name="cantidad2"></td>
    </tr>
    <tr>
     <td>Micro</td>
      <td>i7 107000 8 Cores Hasta 4.8GHz</td>
      <td>$379000</td>
      <td><input type="text" class="form-control" placeholder="cantidad" name="cantidad3"></td>
    </tr>
    <tr>
     <td>Tarjeta de Video</td>
      <td>MSI GeForce GTX 1650 D6 Gaming X 4GB GDDR6</td>
      <td>$219990</td>
      <td><input type="text" class="form-control" placeholder="cantidad" name="cantidad4"></td>
    </tr>
  </tbody>
</table>

       <button type="Submit" class="btn btn-primary" value="Enviar">Genera Factura</button>
   

  
</body>
</html>