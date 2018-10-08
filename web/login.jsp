<%-- 
    Document   : login
    Created on : 4/10/2018, 06:27:47 PM
    Author     : charly
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="es">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Punto de venta</title>

    <!-- Bootstrap core CSS-->
    <link href="template/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="template/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="template/css/sb-admin.css" rel="stylesheet">

  </head>

  <body class="bg-dark">

    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Inicio de Sesión</div>
        <div class="card-body">
            <form name="frm_login" id="frm_login" method="post">
            <div class="form-group">
              <div class="form-label-group">
                <input type="text" id="usuario" name="usuario" class="form-control" placeholder="usuario" required="required" >
                <label for="inputEmail">Nombre de Usuario</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="password" id="contrasena" name="contrasena" class="form-control" placeholder="Contraseña" required="required">
                <label for="inputPassword">Contraseña</label>
              </div>
            </div>
            <div class="form-group">
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me">
                  Remember Password
                </label>
              </div>
            </div>
            <a class="btn btn-primary btn-block" href="login.jsp">Iniciar Sesión</a>
          </form>
          <div class="text-center">
            <!-- <a class="d-block small mt-3" href="register.html">Register an Account</a>-->
            <a class="d-block small" href="forgot-password.html">¿Olvidaste tu contraseña?</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="template/vendor/jquery/jquery.min.js"></script>
    <script src="template/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="template/vendor/jquery-easing/jquery.easing.min.js"></script>

  </body>

</html>
