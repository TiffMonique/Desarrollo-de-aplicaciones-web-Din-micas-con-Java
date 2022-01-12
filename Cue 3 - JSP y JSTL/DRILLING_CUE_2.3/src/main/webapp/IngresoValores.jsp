<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema Repuestos</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
	
	<form action="Datos" method="post">

   
   
   <div class="form-row">
    <div class="form-group col-md-4 offset-md-1">
      <label for="nombre">Nombre Completo</label>
      <input type="text" class="form-control" id="txt_nombre" name="nombre" placeholder="Su nombre...">
    </div>
    <div class="form-group col-md-4 offset-md-1">
      <label for="nombre">Empresa</label>
      <input type="text" class="form-control" id="txt_empresa" name="empresa"  placeholder="Su nombre...">
    </div>
    <div class="form-group col-md-4 offset-md-1">
      <label for="direccion">Ciudad</label>
      <input type="text" class="form-control" id="txt_ciudad" name="ciudad" placeholder="Su Ciudad...">
    </div>
    <div class="form-group col-md-4 offset-md-1">
      <label for="direccion">País</label>
      <input type="text" class="form-control" id="txt_pais" name="pais" placeholder="Su Pais...">
    </div>
    
  </div>
    
  <table class="table table-striped table-dark ">
  <thead>
    <tr>
      <th scope="col">Producto</th>
      <th scope="col">Descripcion</th>
      <th scope="col">Valor unidad</th>
      <th scope="col">Cantidad</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Mother Board</td>
      <td>ASUS LGA1200</td>
      <td>$249000</td>
      <td><input type="text" name="cantidad1" placeholder="cantidad" value=0> <td>
      
    </tr>
    <tr>
      
      <td>RAM</td>
      <td>DDR4 8GB 2400MHz Kingston</td>
      <td>$45990</td>
      <td><input type="text" name="cantidad2" placeholder="cantidad" value=0> <td>
    </tr>
    <tr>	
      <td>Micro</td>
      <td>i7 10700 8 Cores Hasta 4.8Ghz</td>
      <td>$379000</td>
      <td><input type="text" name="cantidad3" placeholder="cantidad" value=0> <td>
    </tr>
    
    <tr>	
      <td>Tarjeta de video</td>
      <td>MSI GeForce GTX 1650 D6 Gaming X 4GB GDDR6</td>
      <td>$219990</td>
      <td><input type="text" name="cantidad4" placeholder="cantidad" value=0> <td>
    </tr>
  </tbody>
</table>
  <button type="submit" class="btn btn-primary">Generar Factura</button>
</form>
	

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>