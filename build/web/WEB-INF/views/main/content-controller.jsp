<%-- 
    Document   : content-controler
    Created on : 5/10/2018, 02:27:44 PM
    Author     : charly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="../resources/css/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../resources/DataTables/DataTables-1.10.18/css/jquery.dataTables.css">

        <!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css"> -->
        <link rel="stylesheet" type="text/css" href="../resources/css/inhouse/content.css">
        <link rel="stylesheet" type="text/css" href="../resources/fontawesome/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="../resources/DataTables/dataTables.bootstrap4.min.css">


        <script src="../resources/js/jquery/jquery-3.3.1.min.js"></script>
        <script src="../resources/DataTables/jquery.dataTables.js"></script>
        
        <script src="../resources/js/popper/popper.min.js"></script>
        <script src="../resources/js/bootstrap/bootstrap.js"></script>
        <!-- <script type="text/javascript" charset="utf8" src="../resources/DataTables/datatables.min.js"></script> -->
        <script type="text/javascript" src="../resources/DataTables/dataTables.bootstrap4.min.js"></script>
        <title>Punto de Venta</title>



        <script type="text/javascript">

            $.extend($.fn.dataTable.defaults, {
                searching: false,
                ordering: false,
                
                "language": {
                    "infoEmpty": "No hay registros que mostrar",
                    "zeroRecords": "Sin registros que mostrar",
                    "info": "Mostrando página _PAGE_ de _PAGES_",
                    "lengthMenu": "Mostrar _MENU_ registros",
                    "paginate": {
                        "first": "Primera página",
                        "last": "Ultima página",
                        "next": "Siguiente",
                        "previous": "Anterior"
                    }
                }
            });

        </script>
    </head>
    <body>

        <!-- inicio del navbar -->

        <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

            <a class="navbar-brand mr-1" href="index.html">Punto de Venta</a>

            <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
                <i class="fas fa-bars"></i>
            </button>

            <!-- Navbar Search -->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>

            <!-- Navbar -->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-bell fa-fw"></i>
                        <span class="badge badge-danger">9+</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-envelope fa-fw"></i>
                        <span class="badge badge-danger">7</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user-circle fa-fw"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" href="#">Activity Log</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
                    </div>
                </li>
            </ul>

        </nav>  

        <!-- fin nav -->
        <!-- inicio del cotenerdor principal -->
        <div id="wrapper">

            <!-- inicio del menu lateral -->
            <ul class="sidebar navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="index.html">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Pages</span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Login Screens:</h6>
                        <a class="dropdown-item" href="login.html">Login</a>
                        <a class="dropdown-item" href="register.html">Register</a>
                        <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
                        <div class="dropdown-divider"></div>
                        <h6 class="dropdown-header">Other Pages:</h6>
                        <a class="dropdown-item" href="404.html">404 Page</a>
                        <a class="dropdown-item" href="blank.html">Blank Page</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="charts.html">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>Charts</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="tables.html">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Tables</span></a>
                </li>
            </ul>
            <!-- fin del menu lateral -->


            <div id="content-wrapper">

                <div class="container-fluid">
                    <!-- Breadcrumbs-->
                    <!-- <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="#">Catálogos</a>
                        </li>
                        <li class="breadcrumb-item active">Clientes</li>
                    </ol> -->

                    <!-- fin de Breadcrumbs -->
                    <%@include file="/WEB-INF/views/pv/puntoVenta.jsp" %>
<%--
                    <%@include file="/WEB-INF/views/catalogo/cliente.jsp" %>
                    <%@include file="/WEB-INF/views/catalogo/cliente-tabla.jsp" %> --%>



                </div> <!-- fin container fluid -->
            </div> <!-- fin content-wrapper -->


            <!-- Sticky Footer -->
            <!--<footer class="sticky-footer">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright © Keeping Learning - Rembao 2019</span>
                    </div>
                </div>
            </footer> -->

        </div><!-- fin del contenedor principal -->




    </body>
</html>
