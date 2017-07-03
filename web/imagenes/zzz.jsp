<%-- 
    Document   : cliente
    Created on : 15-jun-2017, 21:48:00
    Author     : dreyna
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container" style="width: 800px;">            
            <div class="row">
                <div class="col-md-12">
                    
                    <hr>
                    <h3><i class="fa fa-sitemap" aria-hidden="true" style="color: #cccc00"></i><strong style="margin-left: 5px;">Facturas</strong></h3>
                    <hr> 
                    <br>
                    <input type="text" class="" id="cliente">
                    <button type="button" name="boton1" id="cargarcli" onclick="cargarClientes()">Cargar Cliente</button>
                    <div class="pull-right">
                        <button class="btn btn-success" data-toggle="modal" data-target="#add_new_record_modal"><i class="fa fa-plus" aria-hidden="true"></i></button>
                    </div>                                  
                </div>
            </div>
            <table class="table">
                <thead>
                    <tr>
                        <th>N°</th>
                        <th>FECHA</th>
                        <th>RUC</th>
                        <th>MONTO</th>
                        <th>CLIENTE</th>
                        <th>EMPLEADO</th>
                        <th colspan="2">Operacion</th>
                    </tr>
                </thead>
                <tbody id="tablita">

                </tbody>

            </table>
        </div>

        <div class="modal fade" id="add_new_record_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Registrar Rol</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="first_name">Nombres:</label>
                            <input type="text" id="nomcli" placeholder="Nombres.." class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="first_name">Apellidos</label>
                            <input type="text" id="apelcli" placeholder="Apellidos.." class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="first_name">DNI</label>
                            <input type="text" id="dnicli" placeholder="Dni.." class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="first_name">RUC</label>
                            <input type="text" id="ruccli" placeholder="Ruc.." class="form-control" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary" onclick="nuevoCliente()" data-dismiss="modal"><i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                    </div>
                </div>
            </div>
        </div>
                <div class="modal fade" id="clientecargar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">Registrar Clientes</h4>
                            </div>
                            <div class="modal-body">

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-primary" onclick="nuevoCliente()" data-dismiss="modal"><i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                            </div>
                        </div>
                    </div>
                </div> 
                
                
        <div class="modal fade" id="update_user_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Modificar Rol</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="first_name">Nombres:</label>
                            <input type="text" id="nomcli2" placeholder="Nombres.." class="form-control" />
                            <input type="hidden" id="clienteid"/>
                        </div>

                        <div class="form-group">
                            <label for="first_name">Apellidos</label>
                            <input type="text" id="apelcli2" placeholder="Apellidos.." class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="first_name">DNI</label>
                            <input type="text" id="dnicli2" placeholder="Dni.." class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="first_name">RUC</label>
                            <input type="text" id="ruccli2" placeholder="Ruc.." class="form-control" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary" onclick="ModificarCliente()"><i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                    </div>
                </div>
            </div>
        </div>
        <script>
            window.setTimeout(function () {
                $(".alert").fadeTo(500, 0).slideUp(500, function () {
                    $(this).remove();
                });
            }, 4000);
        </script>
    </body>
</html>
