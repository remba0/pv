<%-- 
    Document   : puntoVenta
    Created on : 12-oct-2018, 20:50:54
    Author     : Rembao
--%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    LocalDate fecha = LocalDate.now();
    DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");
    System.out.println("La fecha de hoy es " + fecha.format(formato));

%>


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
        <script type="text/javascript" src="../resources/js/pv/puntoVenta.js"></script>
        <style type="text/css">


        </style>
        <title>Secretaria de finanzas</title>



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



            $("#abrir").click(function () {
                event.preventDefault();
                $("#modalOpcion").modal("show");
            });
            //$("#tablaOpcion").DataTable();

        </script>
    </head>
    <body>

        <!-- inicio del navbar -->

        <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

            <a class="navbar-brand mr-1" href="#">Secretaria de Finanzas</a>

            <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
                <i class="fas fa-bars"></i>
            </button>

            <!-- Navbar Search -->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="row">
                    <div class="input-group">
                        <input type="input" name="fecha" id="fecha" class="form-control" value="<%=fecha.format(formato)%>" />
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="far fa-calendar-alt"></i>
                            </button>
                        </div>
                    </div>
                    <div class="input-group">
                        <select name="salida" id="salida" class="form-control ml-2">
                            <option value="ticket">Ticket</option>
                            <option value="factura">Factura</option>
                            <option value="cotizacion">Cotización</option>
                        </select>    
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-file-invoice-dollar"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </form>

            <!-- Navbar -->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-file-invoice-dollar"></i>

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

            <div id="content-wrapper">

                <div class="container-fluid">
                    <form name="form_venta" id="form_venta" method="post">

                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-4 mb-3 wrapper-lateral">

                                <div class="card">

                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="input-group mb-3">
                                                    <input type="text" class="form-control" placeholder="Nombre del cliente" aria-label="Nombre del cliente" aria-describedby="button_cliente">
                                                    <div class="input-group-append">
                                                        <button class="btn btn-secondary" type="button" id="button_cliente">Ir</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="input-group input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="inputGroup-sizing-sm">Fec. Ent.</span>
                                                    </div>


                                                    <input type="datetime-local" name="fecha_entrega" id="fecha_entrega" value="" class="form-control" />

                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <div class="input-group input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Dirección</span>
                                                    </div>
                                                    <textarea name="direccion" id="direccion" value="" class="form-control" aria-label="direccion"></textarea>
                                                </div>


                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label for="instalado">Instalado</label>
                                                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                                        <label class="btn btn-outline-primary active">
                                                            <input type="radio" name="instalado" id="instalado_si" autocomplete="off" checked> Si
                                                        </label>
                                                        <label class="btn btn-outline-primary">
                                                            <input type="radio" name="instalado" id="instalado_no" autocomplete="off"> No
                                                        </label>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12">



                                                <div class="input-group input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="inputGroup-sizing">Subtotal</span>
                                                    </div>
                                                    <input type="text" class="form-control" name="subtotal" id="subtotal" aria-label="subtotal input" aria-describedby="subtotal input" />
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="input-group input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="inputGroup-sizing">I.V.A.</span>
                                                    </div>
                                                    <input type="text" class="form-control" name="iva" id="iva" aria-label="iva input" aria-describedby="iva input" />
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="input-group ">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="inputGroup-sizing">Total</span>
                                                    </div>
                                                    <input type="text" class="form-control" name="total" id="total" aria-label="total input" aria-describedby="total input" />
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div><!-- .contenedor lateral -->
                            <div class="col-12 col-sm-12 col-md-8">

                                <div class="card">
                                    <div class="card-body">



                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label for="buscar">Buscar:</label>
                                                    <input type="text" name="buscar" id="buscar" class="form-control" size="50" />
                                                </div>
                                            </div>

                                        </div>

                                        <div class="modal fade" tabindex="-1" role="dialog" id="modalOpcion" aria-labelledby="modalOpcion" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="modalOpcionLabel">Opciones</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">

                                                    </div>    <!-- .modal-body -->
                                                </div>
                                            </div>
                                        </div> <!--. fin modalOpcion -->

                                        <div class="modal fade" tabindex="-1" role="dialog" id="modalBuscarProducto" aria-labelledby="modalBuscarProducto" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="modalBuscarProductoTitle">Productos</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div> <!-- fin .modal-header -->
                                                    <div class="modal-body">
                                                        <form name="form_buscar" id="form_buscar" >
                                                            <div class="form-row">
                                                                <div class="col">
                                                                    <input type="text" name="buscarProductoModal" id="buscarProductoModal" class="form-control" placeholder="Teclee producto" />

                                                                </div>
                                                            </div>
                                                            <div class="form-row">
                                                                <div class="col">
                                                                    <div id="resultadoBusquedaProducto">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>   
                                                    </div> <!-- fin .modal-body -->
                                                </div> <!-- fin modal-content -->
                                            </div>
                                        </div>    





                                    </div><!-- /.card-body -->
                                </div> <!-- /.card -->

                                <div class="row mt-3">
                                    <div class="col-12">
                                        <table id="tabla_detalle" name="tabla_detalle" class="table table-striped table-bordered" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>Cantidad</th>
                                                    <th>Descripción</th>
                                                    <th>Desc</th>
                                                    <th>Precio U.</th>
                                                    <th>Importe</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Tiger Nixon</td>
                                                    <td>System Architect</td>
                                                    <td>Edinburgh</td>
                                                    <td>61</td>
                                                    <td>2011/04/25</td>

                                                </tr>
                                            </tbody>
                                        </table>
                                        <script type="text/javascript">
                                            $("#tabla_detalle").DataTable({
                                                paging: false,
                                                info: false
                                            });
                                        </script>
                                    </div>
                                </div>
                            </div> <!-- .col -->



                        </div> <!-- .row -->       
                    </form> <!-- .form_venta -->
                </div> <!-- fin container fluid -->


            </div> <!-- fin content-wrapper -->




        </div><!-- fin del contenedor principal -->




    </body>
</html>

