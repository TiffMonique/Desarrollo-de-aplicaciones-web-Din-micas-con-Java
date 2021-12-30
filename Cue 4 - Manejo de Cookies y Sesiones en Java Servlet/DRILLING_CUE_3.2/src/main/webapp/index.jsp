<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Servlet</title>

<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="wrapper fadeInDown">
  <div id="formContent">
    

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="img/usuario.jpg" id="icon" alt="User Icon" />
    </div>

    <!-- Login Form -->
    <form method="post" action="ProcesaLogin">
      <input type="text" id="login" class="fadeIn second" name="nombre" placeholder="login">
      <input type="password" id="password" class="fadeIn third" name="password" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
      
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Olvidaste la clave?</a>
    </div>

  </div>
</div>

</body>
</html>