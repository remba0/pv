<<%-- 
    Document   : catalogo
    Created on : 10-oct-2018, 22:50:05
    Author     : Rembao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<div class="card">
    <div class="card-header">
        <ul class="nav nav-tabs card-header-tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="tab-cliente" data-toggle="tab" href="#cliente-tab" role="tab" aria-controls="cliente" aria-selected="true">Clientes</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="tab-domicilio" data-toggle="tab" href="#domicilio-tab" role="tab" aria-controls="domicilios" aria-selected="false">Domicilio</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="tab-cliente" data-toggle="tab" href="#banco-tab" role="tab" aria-controls="bancos" aria-selected="false">Datos Bancarios</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="tab-cliente" data-toggle="tab" href="#credito-tab" role="tab" aria-controls="creditos" aria-selected="false">Credito</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Observaciones</a>
            </li>
        </ul>
    </div>
    <div class="card-body">

        <form name="form_cliente" id="form_cliente" method="post">

            <div class="tab-content" id="FormularioTabContent">
                <div class="tab-pane fade show active" id="cliente-tab" role="tabpanel" aria-labelledby="cliente-tab">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="id">Id.</label>
                                <input type="text" class="form-control" name="id" id="id" style="max-width: 18.7rem" placeholder="id">
                            </div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="representante">Representante</label>
                                <input type="text" class="form-control"  name="representante" id="representante" placeholder="Representante" size="20" maxlength="20">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="nombre">nombre(s)</label>
                                <input type="text" class="form-control" id="nombre" placeholder="Nombre(s)">
                            </div>
                        </div>

                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="apellido">apellido(s)</label>
                                <input type="text" class="form-control" id="apellido" placeholder="Apellido(s)">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="rfc">RFC</label>
                                <input type="text" class="form-control" name="rfc" id="rfc" placeholder="RFC">
                            </div>
                        </div>

                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="curp">CURP</label>
                                <input type="text" class="form-control" name="curp" id="curp" placeholder="CURP">
                            </div>
                        </div>
                    </div>

                </div> <!-- fin tab cliente -->

                <div class="tab-pane fade show" id="domicilio-tab" role="tabpanel" aria-labelledby="domicilio-tab">

                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="calle_principal">Calle Principal</label>
                                <input type="text" class="form-control" name="calle_principal" id="calle_principal" placeholder="Calle Principal">
                            </div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="calle_entre">Entre</label>
                                <input type="text" class="form-control" name="calle_entre" id="calle_entre" placeholder="Entre">
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="calle_y">Y</label>
                                <input type="text" class="form-control" name="calle_y" id="calle_y" placeholder="Y">
                            </div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="codigo_postal">C.P.</label>
                                <input type="text" class="form-control" style="max-width: 18.7rem" name="codigo_postal" id="codigo_postal" placeholder="23000">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="no_exterior">No. Exterior</label>
                                <input type="text" class="form-control" name="no_exterior" id="no_exterior" placeholder="">
                            </div>
                        </div>

                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="no_interior">No. Interior</label>
                                <input type="text" class="form-control" name="no_interior" id="no_interior" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="pais">Pais</label>
                                <input type="text" class="form-control" name="pais" id="pais" placeholder="">
                            </div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="entidad">Entidad</label>
                                <input type="text" class="form-control" name="entidad" id="entidad" placeholder="">
                            </div>
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="municipio">Municipio</label>
                                <input type="text" class="form-control" name="municipio" id="municipio" placeholder="">
                            </div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="localidad">Localidad</label>
                                <input type="text" class="form-control" name="localidad" id="localidad" placeholder="">
                            </div>
                        </div>
                    </div>
                </div> <!-- tab-pane fin domicilio -->

                <div class="tab-pane fade show" id="banco-tab" role="tabpanel" aria-labelledby="banco-tab">

                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="banco">Banco</label>
                                <select class="custom-select mr-sm-2" id="banco">
                                    <option selected>Selecciona...</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>

                            </div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="numero_cuenta">No. de cuenta</label>
                                <input type="text" class="form-control" name="numero_cuenta" id="numero_cuenta" size="50" maxlength="50" placeholder="0" />

                            </div>
                        </div>
                    </div>

                </div><!-- fin tab bancos -->

                <div class="tab-pane fade show" id="credito-tab" role="tabpanel" aria-labelledby="credito-tab">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="limite_credito">Limite Credito</label>
                                <input type="text" class="form-control input-text-small input-cantidad" name="limite_credito" id="limite_credito" size="20" maxlength="20" placeholder="0.00" />

                            </div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">

                            <div class="form-group">
                                <label for="credito">Otorgar Credito</label>
                                <div class="form-check ">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                                    <label class="form-check-label" for="inlineCheckbox1">Si</label>
                                </div>
                                <div class="form-check ">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2" checked>
                                    <label class="form-check-label" for="inlineCheckbox2" >No</label>
                                </div>

                            </div>
                        </div>
                        
                    </div>
                    
                    <div class="row">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                                <div class="form-group">
                                    <label for="dias_credito">Días Crédito</label>
                                    <input type="text" name="dias_credito" id="dias_credito" class="form-control input-text-small input-cantidad" value="0" placeholder="0" />
                                    
                                </div>
                                
                                
                            </div>
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="form-group">
                                <label for="no_precio">No. Precio</label>
                                <select name="no_precio" id="no_precio" class="form-control select-small">
                                    <option value="1" selected>1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                </select>
                            </div>   
                            
                        </div>
                            
                        </div>
                    
                </div><!-- fin tab bancos -->
            </div> <!-- fin tab content -->
        </form> <!-- fin del formulario -->

    </div> <!-- fin del card-body -->
</div><!-- fin del card -->
