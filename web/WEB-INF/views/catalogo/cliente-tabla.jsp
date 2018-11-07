<%-- 
    Document   : cliente-tabla
    Created on : 10-oct-2018, 23:07:10
    Author     : Rembao
--%>


<script type="text/javascript">

    $(document).ready(function () {

        $("#table_id").DataTable();

        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })


    });

</script>
<style type="text/css">

    .dataTables_length label {
        font-size: 12px;
    }

    .dataTables_info{
        font-size: 12px;
    }

    .paginate_button {
        font-size: 12px;
    }

    .dataTables_length .custom-select .custom-select-sm .form-control .form-control-sm{
        max-width: 16rem;
    }

    table th { font-size: 12px; }
    table td { font-size: 12px; }

</style>

<div class="card" id="card-cliente-tabla">
    <div class="card-header">
        Clientes
    </div>
    <div class="card-body">


        <div class="row">
            <div class="col-12">
                <div class="input-group mb-3">
                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                        <label class="btn btn-secondary active">
                            <input type="radio" name="buscar_por" id="buscar_por1" autocomplete="off" title="Buscar por nombre" checked> <i class="fas fa-user"></i>
                        </label>
                        <label class="btn btn-secondary">
                            <input type="radio" name="buscar_por" id="buscar_por2" autocomplete="off" title="Buscar por id"> <i class="fas fa-key"></i>
                        </label>
                        <label class="btn btn-secondary">
                            <input type="radio" name="buscar_por" id="buscar_por3" autocomplete="off" title="Buscar por RFC"> <i class="fas fa-file-invoice"></i>
                        </label>
                    </div>



                    <input type="text" class="form-control" placeholder="" id="buscar" name="buscar">
                    <span class="input-group-btn">

                        <a href="#" class="btn btn-dark" id="btn_buscar" >
                            Buscar&nbsp;<i class="fas fa-search"></i>
                        </a>
                    </span>


                </div>
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-12">
                <div class="btn-group" role="group" aria-label="Basic example">
                    <button type="button" name="btn-editar" id="btn-editar" class="btn btn-outline-secondary"><i class="fas fa-user-edit"></i>&nbsp;Editar</button>
                    <button type="button" name="btn-elimnar" id="btn-eliminar"  class="btn btn-outline-secondary"><i class="fas fa-user-minus"></i>&nbsp;Eliminar</button>
                    <button type="button" name="btn-agregar" id="btn-agregar"  class="btn btn-outline-secondary"><i class="fas fa-user-plus"></i>&nbsp;Agregar</button>
                    <button type="button" name="btn-recargar" id="btn-recargar"  class="btn btn-outline-secondary"><i class="fas fa-sync-alt"></i>&nbsp;Recargar</button>
                </div>

            </div>

        </div>

        <div class="row">
            <div class="col-12">


                <table id="table_id" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>RFC</th>
                            <th>Nombre/Representante</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>GORD811012765</td>
                            <td>Marianne Mincy</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>FDRC901012987</td>
                            <td>Cathern Riegel</td>
                        </tr>
                    </tbody>
                </table>
            </div><!-- fin del card-body -->
        </div>
    </div>
</div>  <!-- fin del card -->