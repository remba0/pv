<%-- 
    Document   : login
    Created on : 4/10/2018, 07:19:40 PM
    Author     : charly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="../resources/css/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../resources/css/inhouse/login.css">
        <link rel="stylesheet" type="text/css" href="../resources/css/inhouse/main.css">
        <!-- <script src='https://www.google.com/recaptcha/api.js'></script> -->
        
       
        <title>Departamento de Base de Datos y Servidores</title>
    </head>
    <body>
        <div id="container-fluid">
            <!-- Header -->
            <nav id="header" class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
                <div class="container">
                    <!-- <a class="navbar-brand" href="#">
                        <img src="../resources/img/logo.png" alt="Gobierno del Estado de Baja California Sur">

                    </a> -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbar">
                        <ul class="navbar-nav ml-auto">
                            
                            <li class="nav-item">
                                <a class="nav-link text-cdba" id="btnLogin" href="#" >Iniciar Sesión</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link text-cdba" id="btnLogOut" href="#" >Cerrar Sesión</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div> <!-- /container -->
        <!-- /Header -->

        <form name="frmLogin" id="frmLogin" method="post">
            <section id="main" class="jumbotron text-center">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <img src="../resources/img/logo/logo.jpg" class="rounded-circle"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col" >
                            <label style="font-weight: lighter; font-size: 1.2rem"> Inicio de Sesión </label>
                        </div>
                    </div>



                    <div class="row mt-4">
                        <div class="col">
                            <input type="text" class="form-control" name="username" id="username" size="50" maxlength="100" placeholder="nombre de usuario"/>
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col">
                            <input type="password" class="form-control" name="password" id="password" size="50" maxlength="100" placeholder="contraseña"/>
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col">
                            <a href="../seguridad/IamLost" class="btn-outline-danger">¿Olvidaste tu usuario?</a>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4 offset-8">
                            <button  class="btn btn-outline-success my-2">Iniciar Sesión</button>
                            <!-- <button class="btn btn-outline-success my-2 g-recaptcha" data-sitekey="6LestG8UAAAAAFEoZI7mTngMvZQ6tKUBowCy_jxW" data-callback='onSubmit'>Siguiente</button> -->

                        </div>
                    </div>

                </div>
            </section>
        </form>




        <!-- Footer -->
        <footer id="footer" class="pb-4">
            <div class="container">
                <div class="row text-center ">
                    <div class="col-12 col-lg mt-4">
                        <a href="#">Preguntas frecuentes</a>
                    </div>
                    <div class="col-12 col-lg mt-4">
                        <a href="#">Contáctanos</a>
                    </div>
                    <div class="col-12 col-lg mt-4">
                        <a href="#">Términos y condiciones</a>
                    </div>
                    <div class="col-12 col-lg mt-4">
                        <a href="#">Privacidad</a>
                    </div>

                </div>
                <div class="row text-center mt-4">
                    <div class="col">Keeping Learning Rembao - FullStack . &copy; 2018</div>

                </div>
            </div>
        </footer>
        <!-- /Footer -->
        
        
        <script src="../resources/js/jquery/jquery-3.3.1.min.js"></script>
        <script src="../resources/js/bootstrap/bootstrap.js"></script>
    </body>
</html>