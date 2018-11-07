/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//esperar hasta que el dom se cargue
$(document).ready(function () {



    $('#modalBuscarProducto').modal({
        keyboard: false,
        show: false
    })

    $('#modalBuscarProducto').on('shown.bs.modal', function (e) {
        console.log("modalBuscarProducto abierto")
        $("#buscarProductoModal").focus();
    })

    $("#modalBuscarProducto").on("hidden.bs.modal", function (e) {
        console.log("cerrado modalBuscarProducto")
    })

    $("body").keyup(function (e) {
        //console.log(e.keyCode)
        //console.log(e.target)
        //console.log(e.target.id)
        var elementoHtml = (e.target.id !== "") ? e.target.id : "NA"
        var tecla = e.keyCode
        var idmodal = "";
        console.log(tecla)

        switch (tecla) {
            case 27:
                //console.log("abriendo menu desp")
                if (!$("#modalOpcion").is(":visible") && !$("#modalBuscarProducto").is(":visible")) {
                    $("#modalOpcion").modal("show")

                }

                break
            case 113:
                if (!$("#modalBuscarProducto").is(":visible")) {
                    $("#modalBuscarProducto").modal("show")
                } else {
                    $("#modalBuscarProducto").modal("hide")
                }
                break
            case 13:
                switch (elementoHtml) {
                    case "buscarProductoModal":
                        //console.log("buscando articulo")
                        var buscar = document.getElementById("buscarProductoModal").value;
                        console.log(buscar)
                        buscarProductoEnter(buscar)




                        break
                    default:
                        break
                }
                break
            default:
                break
        }



    }) //fin del body keyup



    /**
     * buscar producto con la tecla enter
     */

    /*$("#buscarProductoModal").keyup(function (e) {
     switch (e.keyCode){
     case 13:
     console.log("buscar producto escrito")
     break;
     }
     })*/


})// fin  del ready

function buscarProductoEnter(buscar) {
    
    console.log("llamada desde buscarProductoEnter")
    $formData = {
        cadenaBusqueda: buscar,
        accion: "buscar_producto"
    }
    $.post("../pventa/BuscaProducto",$formData,function(data){
        
    })


}