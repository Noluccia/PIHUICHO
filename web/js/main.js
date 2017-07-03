$(document).ready(function (){  
    
});


//SOLUCION PARA CERRAR EL MODAL
function limpiar() {
    if ($('.modal-backdrop').is(':visible')) {
        $('body').removeClass('modal-open');
        $('.modal-backdrop').remove();
    }
    ;
}


function listarPrestamos(){
    $.get("pc",{opc:1},function (data){
       $("#contenido").html(data);
     });    
}
function cargarDatosPrestamos(id) {
    $("#update_user_modal").modal("show");
    $("#prestamoid").val(id);
    $.post("pc", {
            id: id,
            opc: '3'
        },  function (data, status) {            
            var prestamo = JSON.parse(data);
            var fechap = convertDate2(prestamo.fechap);
            var fechad = convertDate2(prestamo.fechad);

            
        $.get("cc", {opc: 6}, function (data1) {
            var rr = JSON.parse(data1);
            $('#roles2').html('');
            $("#roles2").append('<option value="0">Seleccionar Rol</option>');
            $.each(rr, function (index, obj) {
                if (prestamo.idcliente == obj.idcliente) {
                    $("#roles2").append('<option value=' + obj.idcliente + '>' + obj.nombres + '</option>');
                    $("#roles2").val(obj.idcliente).change();
                    $("#idcliente").val($("#roles2").val());
                } else {
                    $("#roles2").append('<option value=' + obj.idcliente + '>' + obj.nombres + '</option>');                    
                }
      
            });
            
        });
//        $("#fechap").val(prestamo.fechap);
//        $("#fechad").val(prestamo.fechad);

//        $("#prestamoid").val(prestamo.idprestamo);
        $("#fechap").val(fechap);
        $("#fechad").val(fechad);
        }
                
    );
    
    
}
function ModificarPrestamos(){
    var id = $("#prestamoid").val();
    var idcli = $("#roles2").val();
    var fechapres = $("#fechap").val();
    var fechadevol =  $("#fechad").val();
    var fechap = convertDate(fechapres);
    var fechad = convertDate(fechadevol);
    alert(fechap);
    alert(fechad);

    
    $.post("pc", {id: id, idcli: idcli, fechap: fechap, fechad:fechad, opc: '4'}, function (data, status) {   

            $("#update_user_modal").modal("hide");
            listarPrestamos();
            limpiar();
        }
                
    );
    
//    $("#fechap").val()
}
function convertDate(inputFormat) {
    function pad(s) {
        return (s < 10) ? '0' + s : s;
    }
    var d = new Date(inputFormat);
    return [pad(d.getDate()+1), pad(d.getMonth() + 1), d.getFullYear()].join('/');
}
function convertDate2(inputFormat) {
    function pad(s) {
        return (s < 10) ? '0' + s : s;
    }
    var x = new Date(inputFormat);
    return [pad(x.getFullYear()), pad(x.getMonth()+1), x.getDate()].join('-');
}